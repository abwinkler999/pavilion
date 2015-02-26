class Girl < ActiveRecord::Base
	belongs_to :level
	has_and_belongs_to_many :session
	belongs_to :user
	belongs_to :tshirt

	validates_presence_of :first_name, :last_name, :level_id, :dob, :fallgrade, :troopnumber, :tshirt_id
end
