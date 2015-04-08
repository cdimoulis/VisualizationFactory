class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.references :curriculum
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
