class AddAttendingToUser < ActiveRecord::Migration
  def change
  	change_table(:users) do |t|
  		t.boolean :attending, default: false
  	end
  end
end
