class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :sched_course_id, null: false
      t.integer :outcome_id, null: false
      t.decimal :score, null: false

      t.timestamps
    end
  end
end
