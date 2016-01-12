class Session < ActiveRecord::Base
	has_and_belongs_to_many :girls
	has_and_belongs_to_many :adults
	belongs_to :slot
	belongs_to :level
end
