class CreateEducationalObjectives < ActiveRecord::Migration
  def change
    create_table :educational_objectives do |t|
      t.references :curriculum
      t.string :text
      t.text :description

      t.timestamps
    end
  end
end
