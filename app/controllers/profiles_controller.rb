class ProfilesController < ApplicationController
  def index
  	@users = User.order(:job_title, :first_name)
  end

  def show
  	@user = User.find_by(params[:user_id])
  	@results = Result.where(user_id: @user.id)
  end



end
