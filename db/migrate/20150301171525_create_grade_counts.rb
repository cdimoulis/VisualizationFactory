class CreateGradeCounts < ActiveRecord::Migration
  def change
    create_table :grade_counts do |t|
      t.references :scheduled_course
      t.integer :a
      t.integer :b
      t.integer :c
      t.integer :d
      t.integer :f

      t.timestamps
    end
  end
end
