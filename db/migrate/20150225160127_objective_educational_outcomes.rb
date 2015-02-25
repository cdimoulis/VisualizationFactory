class ObjectiveEducationalOutcomes < ActiveRecord::Migration
  def change
    create_join_table :outcomes, :educational_objectives do |t|
      t.index :outcome_id
      t.index :educational_objective_id
  end
end
