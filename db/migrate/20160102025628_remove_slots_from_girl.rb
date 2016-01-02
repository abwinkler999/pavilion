class RemoveSlotsFromGirl < ActiveRecord::Migration
  def change
      change_table(:girls) do |t|
        t.remove  "session_A_id"
        t.remove  "session_B_id"
        t.remove  "session_C_id"
        t.remove  "session_D_id"
      end
  end
end
