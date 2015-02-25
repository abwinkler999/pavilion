class AddHalfweekToUser < ActiveRecord::Migration
  def change
  	change_table(:users) do |t|
  		t.boolean :halfweek, default: false
  	end
  end
end
