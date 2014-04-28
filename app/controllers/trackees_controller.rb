class TrackeesController < ApplicationController

  #TODO edit/update trackee
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
    if (@trackee = Trackee.find_by_id(id))

    else
      @trackee = Trackee.new
      flash[:error] = "Oops! We can't find that person!"
    end

    def edit

      id = params[:id]
      if(@trackee = Trackee.find_by_id(id))

      else
        flash[:error] = "Oops! We can't find that person!"
        redirect_to trackees_path
      end

    end

  end

end