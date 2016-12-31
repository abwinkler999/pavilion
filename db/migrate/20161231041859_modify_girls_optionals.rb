class ModifyGirlsOptionals < ActiveRecord::Migration
  def change
	  	change_table(:girls) do |t|
        t.remove   "cooking_session"
        t.remove  "high_ropes"
        t.boolean "kayaking",             default:false
	  	end
	end
end
