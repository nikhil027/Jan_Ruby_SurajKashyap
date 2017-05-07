class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :summary
      t.integer :rating
      t.datetime :date_watched
      t.string :image_url

      t.timestamps null: false
    end
  end
end
