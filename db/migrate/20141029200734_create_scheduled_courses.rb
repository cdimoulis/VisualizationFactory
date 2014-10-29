class CreateScheduledCourses < ActiveRecord::Migration
  def change
    create_table :scheduled_courses do |t|
      t.integer :course_id, null:false
      t.string :semester, null:false
      t.integer :year, null:false
      t.string :teacher
      t.integer :num_students

      t.timestamps
    end
  end
end
