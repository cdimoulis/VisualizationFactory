class CreateScheduledCourses < ActiveRecord::Migration
  def change
    create_table :scheduled_courses do |t|
      t.references :course, null:false
      t.string :semester, null:false
      t.integer :year, null:false
      t.references :instructor
      t.integer :num_students

      t.timestamps
    end
  end
end
