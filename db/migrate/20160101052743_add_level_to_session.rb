class AddLevelToSession < ActiveRecord::Migration
  def change
    change_table(:sessions) do |t|
      t.integer  "level_id"
    end
  end
end
