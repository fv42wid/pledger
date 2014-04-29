class PledgesController < ApplicationController

  #TODO create pledge function
  #figure out how to add trackee id and then save

  def new

    @trackee = params[:trackee_id]

  end

  def create

    debugger
    @trackee = params[:trackee_id]
    @pledge = Pledge.create!(params[:pledge])
    flash[:success] = 'Pledge added!'
    redirect_to trackee_path(@trackee)

  end

end