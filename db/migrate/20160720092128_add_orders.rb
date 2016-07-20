class AddOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :username
      t.string :phone
      t.string :address
      t.text :goods

      t.timestamps
    end
  end
end
