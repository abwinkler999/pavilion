class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.integer :level_id
      t.string :dietary
      t.boolean :no_gluten

      t.timestamps
    end
  end
end
