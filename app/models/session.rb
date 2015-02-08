class Session < ActiveRecord::Base

	belongs_to :slot
	belongs_to :restriction
end
