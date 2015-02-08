class Session < ActiveRecord::Base
	belongs_to :slot
	belongs_to :restriction
	has_and_belongs_to_many :girl
end
