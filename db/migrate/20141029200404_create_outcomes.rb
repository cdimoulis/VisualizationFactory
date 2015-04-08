class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.references :curriculum
      t.string :text, null: false
      t.text :description

      t.timestamps
    end
  end
end
