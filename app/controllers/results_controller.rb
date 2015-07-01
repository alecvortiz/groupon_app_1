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

 
  def destroy
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.find(params[:id])
    @comment.destroy
    redirect_to idea_path(@idea)
  end
 
  private
    def result_params
      params.require(:result).permit(:year, :quarter, :summary)
    end

end
