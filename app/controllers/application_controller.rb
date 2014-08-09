class ApplicationController < ActionController::API
 
	private

  def current_user
    @current_user ||= User.find_by(auth_token: params[:auth_token]) if params[:auth_token]
  end

  helper_method :current_user

  def authenticate_user!
		head :unauthorized unless current_user
	end
end
