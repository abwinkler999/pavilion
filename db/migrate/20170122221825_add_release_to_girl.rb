class AddReleaseToGirl < ActiveRecord::Migration
  def change
	  	change_table(:girls) do |t|
        t.boolean "release"
	  	end
	end
end
