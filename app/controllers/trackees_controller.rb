class TrackeesController < ApplicationController

  #TODO display flash messages
  #TODO add a pledge to a trackee

  def index
    @trackees = Trackee.all

  end

  def new

  end

  def create
    @trackee = Trackee.create!(params[:trackee])
    flash[:notice] = "#{@trackee.first_name} was created!"
    redirect_to trackees_path
  end

end