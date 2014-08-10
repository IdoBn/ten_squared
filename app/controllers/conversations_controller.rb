class ConversationsController < ApplicationController
	before_action :authenticate_user!

	def index
		render json: current_user.conversations
	end

	def message
		Message.send(channel: 'test_channel', user: current_user)
	end
end