class StaticPagesController < ApplicationController
	before_action :authenticate_user!
  def help
  end
end
