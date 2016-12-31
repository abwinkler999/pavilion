class RemoveRestrictions < ActiveRecord::Migration
  def change
      drop_table(:restrictions)
	end
end
