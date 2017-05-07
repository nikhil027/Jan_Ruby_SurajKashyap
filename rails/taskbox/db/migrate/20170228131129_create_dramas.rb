class CreateDramas < ActiveRecord::Migration
  def change
    create_table :dramas do |t|
      t.string :name
      t.date :release_date
      t.string :language
      t.text :description

      t.timestamps null: false
    end
  end
end
