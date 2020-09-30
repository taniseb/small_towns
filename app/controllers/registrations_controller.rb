class RegistrationsController < Devise::RegistrationsController

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to new_user_session_path
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:email,:first_name,:last_name,:cpf)
	end

end