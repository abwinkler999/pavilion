class Adult < ActiveRecord::Base
	belongs_to :user
	belongs_to :tshirt
	has_and_belongs_to_many :sessions

	validates_presence_of :first_name, :last_name, :address, :phone, :troopnumber, :tshirt_id
	validates :troopnumber, format: { with: /[A-Z][A-Z]\d+/i, message: "Please give full AHG troop name, like 'OH0001'"}
end
