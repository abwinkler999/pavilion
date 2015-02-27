class Girl < ActiveRecord::Base
	belongs_to :level
	has_and_belongs_to_many :session
	belongs_to :user
	belongs_to :tshirt
	belongs_to :session_A, class_name: 'Session', primary_key: 'session_A_id'
	belongs_to :session_B, class_name: 'Session', primary_key: 'session_B_id'
	belongs_to :session_C, class_name: 'Session', primary_key: 'session_C_id'
	belongs_to :session_D, class_name: 'Session', primary_key: 'session_D_id'

	validates_presence_of :first_name, :last_name, :level_id, :dob, :fallgrade, :troopnumber, :tshirt_id, :session_A, :session_B, :session_C, :session_D
	validates_numericality_of :fallgrade
end
