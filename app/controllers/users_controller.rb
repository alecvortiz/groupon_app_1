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

		if params[:search]
			@users = User.search_by_user_full_name(params[:search]).order(:check, :job_title, :first_name)
		
		else
			@users = User.order(:check, :job_title, :first_name)	
		end
		@all = User.all
		@count = 0
		@all.each do |user|
			if user.check == false
				@count += 1
			end
		end
	end

	

	def new
		@user = User.new
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

	def click
		@user = User.find(params[:id])
		@user.check = true
		@user.save

		redirect_to user_path(@user)
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(edit_user_params)
			redirect_to user_path(@user)
		else
			render :edit
		end
	end



private
	
	def user_params
		params.require(:user).permit(:first_name, :last_name, :job_title, :email, :password, :password_confirmation, :role, :current_password)
	end

	def edit_user_params
		params.require(:user).permit(:first_name, :last_name, :job_title, :role)
	end

end
