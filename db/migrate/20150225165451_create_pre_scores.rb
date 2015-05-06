class CreatePreScores < ActiveRecord::Migration
  def change
    create_table :pre_scores do |t|
      t.references :scheduled_course, index: true
      t.references :pre_assessment, index: true
      t.decimal :score

      t.timestamps
    end
  end
end
