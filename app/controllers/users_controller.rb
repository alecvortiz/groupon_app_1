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
		@quarter_array = ['Q1', 'Q2', 'Q3', 'Q4']
		@year_array = ['2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2025', '2026', '2027', '2028', '2029', '2030'] 
		@quarter = options_for_select(quarter_array)
		@quarter = options_for_select(year_array)
		@users = User.order(:job_title, :first_name)
	end
end
