class AddCapacityToSession < ActiveRecord::Migration
  def change
    change_table(:sessions) do |t|
      t.integer  "capacity", default:10
    end
  end
end
