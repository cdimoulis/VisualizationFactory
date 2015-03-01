class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :scheduled_course, null: false
      t.references :outcome, null: false
      t.decimal :score, null: false

      t.timestamps
    end
  end
end
