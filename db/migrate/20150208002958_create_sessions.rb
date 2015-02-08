class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.string :description
      t.integer :restriction_id
      t.integer :slot_id

      t.timestamps
    end
  end
end
