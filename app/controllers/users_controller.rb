class UsersController < ApplicationController
	def create
		@user = User.new(user_params)
		if @user.save
			@user.send_auth_code
		 	head :success
		else
			render json: { errors: @user.errors.full_messages }
		end
	end

	private 

	def user_params
		params.require(:user).permit(:name, :phone_number)
	end
end