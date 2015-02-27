class Girl < ActiveRecord::Base
	belongs_to :level
	belongs_to :user
	belongs_to :tshirt
	belongs_to :session_A, class_name: 'Session'
	belongs_to :session_B, class_name: 'Session'
	belongs_to :session_C, class_name: 'Session'
	belongs_to :session_D, class_name: 'Session'

	validates_presence_of :first_name, :last_name, :level_id, :dob, :fallgrade, :troopnumber, :tshirt_id
	validates_numericality_of :fallgrade
end
