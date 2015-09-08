class HistoriesController < ApplicationController
	before_action :authenticate_user!

  def index
     @history = current_user.histories.last()
  end

  def create
    @history = current_user.histories.new(history_params)
    @history.date = Date.today
    @history.save
    redirect_to root_path
  end

  def new
  	@history = current_user.histories.new
  end
  
  private 

  def history_params
  	params.require(:history).permit(:weight, :waist, :hip, :leg, :fat)
  end

end
