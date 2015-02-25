class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcome do |t|
      t.string :text, null: false
      t.text :description

      t.timestamps
    end
  end
end
