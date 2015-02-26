class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :girls
  belongs_to :tshirt

  validates_presence_of :first_name, :last_name, :address, :phone, :troop_number
end
