class CreateScheduledCourses < ActiveRecord::Migration
  def change
    create_table :scheduled_courses do |t|
      t.references :course, null:false
      t.string :semester, null:false
      t.integer :year, null:false
      t.references :instructor
      t.integer :initial_bs, default: 0
      t.integer :final_bs, default: 0
      t.integer :initial_ba, default: 0
      t.integer :final_ba, default: 0

      t.timestamps
    end
  end
end
