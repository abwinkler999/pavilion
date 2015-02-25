class Tshirt < ActiveRecord::Base
	has_many :users
	has_many :girls
end
