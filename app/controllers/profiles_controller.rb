class ProfilesController < ApplicationController
  def index
  	@users = User.order(:job_title, :first_name)
  end

  def show
  	@profile = Profile.find_by(params[:id])
  end



end
