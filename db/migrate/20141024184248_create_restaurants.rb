class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :address
    	t.string :telephone
    	t.text :description
    end
  end
end
