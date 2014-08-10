class Message
	def self.send(channel: nil, trigger: 'message:new', message: {})
		Pusher[channel].trigger(trigger, {
			message: message.merge({ sent_at: Time.now, from: current_user})
		})
	end
end