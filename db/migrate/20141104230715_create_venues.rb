class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :description

      t.timestamps null: false
    end
  end
end
