class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :number, null: false
      t.string :text, null: false
      t.text :description
      t.integer :category_id

      t.timestamps
    end
  end
end
