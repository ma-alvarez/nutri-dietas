class HistoryController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def create
    @history = History.new([:weight, :waist, :hip, :leg, :fat])
    @history.save()
    redirect_to user_path(current_user)
  end
end
