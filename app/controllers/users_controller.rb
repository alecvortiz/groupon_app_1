class UsersController < ApplicationController

		
	

	def show
		if params[:id]
			@user = User.find(params[:id])
		else
			@user = User.find(current_user)
		end
		
		@results = Result.where(user_id: @user).order(created_at: :desc)
	end

	def index
		@users = User.order(:job_title, :first_name)
		@count = 0
		@users.each do |user|
			if user.check == false
				@count += 1
			end
		end
	end

	def new
	end

	def create
		@user = User.create(user_params)
		@user.password = "password123"
		@user.password_confirmation = "password123"

		if @user.save
			UserMailer.signup_email(@user).deliver_now 
			redirect_to user_path(@user)
		else
			render :new
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	def reset
		@users = User.all
		@users.each do |user|
			user.check = false
			user.save
		end

		redirect_to users_path
	end

	def unclick
		@user = User.find(params[:id])
		@user.check = false
		@user.save

		redirect_to user_path(@user)
	end

private
	
	def user_params
		params.require(:user).permit(:first_name, :last_name, :job_title, :email, :password, :password_confirmation)
	end

end
