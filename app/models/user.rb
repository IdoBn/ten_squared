class User < ActiveRecord::Base
	include Tokenable
	has_one_time_password

	has_many :participants
	has_many :conversations, through: :participants

	validates :name, presence: true
	validates :phone_number, presence: true

	validates :phone_number, uniqueness: true

	def send_auth_code
    SendCode.new.send_sms(:to => self.phone_number, :body => "Your code is: #{self.otp_code}")
  end
end
