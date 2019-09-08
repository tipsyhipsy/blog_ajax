module UsersHelper

	def logged_in?
		current_user.presence
	end

	def current_user
		@current_user ||= User.find_by(id: params[:id])
	end

end
