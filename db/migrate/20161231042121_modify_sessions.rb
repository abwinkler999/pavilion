class ModifySessions < ActiveRecord::Migration
  change_table(:sessions) do |t|
    t.string "disclaimer"
  end
end
