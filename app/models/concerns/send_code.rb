require 'twilio-ruby'

class SendCode

	def initialize
		account_sid = Rails.application.secrets.twilio_account_sid
		auth_token = Rails.application.secrets.twilio_auth_token
		@client = Twilio::REST::Client.new account_sid, auth_token
		@t_phone = Rails.application.secrets.twilio_phone_number
	end 

	def send_sms(options = {})
		@client.account.sms.messages.create(options.merge!({:from => @t_phone}))
	end

end