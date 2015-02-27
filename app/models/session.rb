class Session < ActiveRecord::Base
	has_many :girls
	belongs_to :slot
end
