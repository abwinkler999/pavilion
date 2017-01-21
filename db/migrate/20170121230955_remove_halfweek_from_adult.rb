class RemoveHalfweekFromAdult < ActiveRecord::Migration
  def change
    change_table(:adults) do |t|
      t.remove  "halfweek"
    end
  end
end
