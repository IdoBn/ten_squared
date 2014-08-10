class Message
	def self.send(channel: nil, trigger: 'message:new', message: {}, user: nil)
		Pusher[channel].trigger(trigger, {
			message: message.merge({ sent_at: Time.now, from: user})
		})
	end
end