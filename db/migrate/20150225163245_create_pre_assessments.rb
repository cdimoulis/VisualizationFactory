class CreatePreAssessments < ActiveRecord::Migration
  def change
    create_table :pre_assessments do |t|
      t.references :curriculum
      t.string :text

      t.timestamps
    end
  end
end
