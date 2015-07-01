class UsersController < ApplicationController
	def show
		if params[:id]
			@user = User.find(params[:id])
		else
			@user = User.find(current_user)
		end
		
		@results = Result.where(user_id: @user)
	end

	def index
		@users = User.order(:job_title, :first_name)
	end

end
