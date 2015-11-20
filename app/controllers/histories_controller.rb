class HistoriesController < ApplicationController
	before_action :authenticate_user!

  def index
     @history = current_user.histories.last()
     gon.histories = current_user.histories
  end

  def create
    @history = current_user.histories.new(history_params)
    @history.date = Date.today
    @history.save
    redirect_to root_path
  end

  def new
    @open = is_open
  	@history = current_user.histories.new
  end

  

  private 

  def history_params
  	params.require(:history).permit(:weight, :waist, :hip, :leg, :fat, :user_id, :date)
  end
  #Check for open record
  def is_open
      return false
  end
end
