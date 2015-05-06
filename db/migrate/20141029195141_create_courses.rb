class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :curriculum
      t.integer :number, null: false
      t.string :text, null: false
      t.text :description
      t.references :category

      t.timestamps
    end
  end
end
