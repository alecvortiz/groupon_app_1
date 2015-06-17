class ProfilesController < ApplicationController
  def index
  	@users = User.order(:job_title).reverse_order
  end

  def show
  	@profile = Profile.find_by(params[:id])
  end



end
