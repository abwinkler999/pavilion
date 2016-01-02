class Session < ActiveRecord::Base
	has_and_belongs_to_many :girls
	belongs_to :slot
	belongs_to :level
end
