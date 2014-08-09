class AuthController < ApplicationController
	# before_action :authenticate_user!, only: [ :index ]

	def index
		if authenticate_otp
			@user.generate_token
			render json: @user
		else
			head :unauthorized
		end
	end

	private

	def authenticate_otp
		if @user = User.find_by(phone_number: params[:phone_number])
			return @user.authenticate_otp(params[:otp_code], drift: 120)
		end
		false
	end
end