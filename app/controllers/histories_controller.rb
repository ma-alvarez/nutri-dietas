class HistoriesController < ApplicationController
	before_action :authenticate_user!

  def index
  end

  def create
    @history = current_user.histories.build(history_params)
    @history.save
    redirect_to root_path
  end

  def new
  	@history = current_user.histories.new
  end
  
  private 

  def history_params
  	params.permit(:weight, :waist, :hip, :leg, :fat)
  end

end
