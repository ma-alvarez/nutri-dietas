class HistoriesController < ApplicationController
	before_action :authenticate_user!

  def index
     @history = current_user.histories.last
     gon.histories = current_user.histories
     gon.last_weight = current_user.histories.last.weight
     gon.weight_exp = current_user.weight_exp
     gon.first_weight = current_user.histories.first.weight
  end

  def create
    @history = current_user.histories.last
    current_user.histories.last.update(history_params)
    redirect_to root_path
  end

  def new
    @open = open?
  	@history = current_user.histories.new
  end

  

  private 

  def history_params
  	params.require(:history).permit(:waist, :hip, :leg,:user_id, :date)
  end
  #Check for open record
  def open?
      return (current_user.histories.last && current_user.histories.last.weight && !complete?)
  end

  def complete?
    history = current_user.histories.last
    return history.weight && history.waist && history.hip && history.leg
  end

end
