class Adult < ActiveRecord::Base
	belongs_to :user
	belongs_to :tshirt

	validates_presence_of :first_name, :last_name, :address, :phone, :troopnumber, :tshirt_id
end
