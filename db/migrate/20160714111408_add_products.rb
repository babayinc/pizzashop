class AddProducts < ActiveRecord::Migration
  def change
  	Product.create ({:title => 'Hawaiian',
      :description => 'This is hawaiian pizza',
      :price => 100,
      :size => 30,
      :is_spicy => false,
      :is_veg => false,
      :is_best_offer => false,
      :path_to_image => '/images/hawaiian.jpg'})

  	Product.create ({:title => 'Ppepperoni',
      :description => 'This is pepperoni pizza',
      :price => 110,
      :size => 30,
      :is_spicy => true,
      :is_veg => false,
      :is_best_offer => true,
      :path_to_image => '/images/pepperoni.jpg'})

  	Product.create ({:title => 'Vegetarian',
      :description => 'This is veg pizza',
      :price => 115,
      :size => 30,
      :is_spicy => false,
      :is_veg => true,
      :is_best_offer => false,
      :path_to_image => '/images/veg.jpg'})
  end
end
