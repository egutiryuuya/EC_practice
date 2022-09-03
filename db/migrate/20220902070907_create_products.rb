class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :genre 
      t.text :product_introduction
      t.integer :product_price
      
      

      t.timestamps
    end
  end
end
