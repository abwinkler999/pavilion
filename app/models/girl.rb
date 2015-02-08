class Girl < ActiveRecord::Base
	belongs_to :level
	has_and_belongs_to_many :session
end
