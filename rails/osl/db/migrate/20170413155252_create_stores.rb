class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
    	t.string :name
    	t.text :address
    	t.string :phone_number
    	t.string :website
    	
      t.timestamps null: false
    end
  end
end
