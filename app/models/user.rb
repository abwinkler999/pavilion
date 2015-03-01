class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :girls
	has_one :adult

	after_create :send_welcome_email

	def send_welcome_email
		CampMailer.welcome_email(self).deliver_later
	end

end
