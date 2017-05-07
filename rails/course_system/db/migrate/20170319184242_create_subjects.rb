class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.text :description
      t.integer :instructor_id

      t.timestamps null: false
    end
  end
end
