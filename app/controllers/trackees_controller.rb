class TrackeesController < ApplicationController

  #TODO display flash messages
  #TODO add a pledge to a trackee

  def index

    @trackees = Trackee.last(10).reverse

  end

  def new

  end

  def create

    @trackee = Trackee.create!(params[:trackee])
    flash[:success] = "#{@trackee.first_name} #{@trackee.last_name} was created!"
    redirect_to trackees_path

  end

  def show

    id = params[:id]
    @trackee = Trackee.find(id)

  end

end