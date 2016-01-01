class Session < ActiveRecord::Base
	has_many :girls
	belongs_to :slot
	belongs_to :level
end
