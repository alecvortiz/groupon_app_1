class ResultsController < ApplicationController

def create
    @user = User.find(params[:user_id])
    @result = @user.results.build(result_params)
    @result.user_id = @user.id

    if @result.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
end

def new
  @user = User.find(params[:user_id])
end


 
  def destroy
    @result = Result.find(params[:id])
    @result.destroy

    redirect_to user_path(params[:user_id])
  end

  def edit
    @result = Result.find(params[:id])
    @user = User.find(@result.user_id)
  end

  def update
    @result = Result.find(params[:id])
    @user = User.find(@result.user_id)

    if @result.update(result_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
 
  private
    def result_params
      params.require(:result).permit(:year, :quarter, :summary)
    end

end
