class PledgesController < ApplicationController

  #TODO create pledge function
  #figure out how to add trackee id and then save
  
  #try this
  #@order = @customer.orders.create(order_date: Time.now)
  #http://guides.rubyonrails.org/association_basics.html

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
