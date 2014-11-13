class UsersController < ApplicationController 

	def index
	end

	# def create 
	# 	@user = User.new(strong_params)
	# 	if @user.save
	# 		UserMailer.sign_up_email(@user).deliver 
	# 		redirect_to user_path(@user_path)
	# 	else
	# 		render'new'
	# 	end
	# end

	def new
		@user = User.new
	end

	def show
		if params[:email]
			@user = User.find_by(params[:email])
		else
			@user = User.find(params[:id]) 
		end
	end

	private 

	def strong_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end