class HistoryController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def create
    @history = History.build(history_params)
    @history.save
  end
  
  private 

  def history_params
  	params.permit(:weight, :waist, :hip, :leg, :fat)
  end

end
