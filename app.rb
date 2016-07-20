#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base

end

class Order < ActiveRecord::Base
end

get '/' do
	@products = Product.order('id')
	erb :index
end

get '/about' do
	erb :about
end

post '/cart' do
	@orders = {}
	@products = Product.order('id')
	orders_array = params[:orders].split(',')
	orders_array.each do |order|
		str = order.split('=')
		product = @products.find(str[0].tr_s('product_',''))
		@orders[product.title]=str[1]
	end

	erb :cart

end

post '/order' do
	order = Order.new params[:order]
	order.goods = params[:orders]
	if order.save
		erb "Order saved"
	else
		@error = order.errors.full_messages.first
		erb :cart
	end

end
