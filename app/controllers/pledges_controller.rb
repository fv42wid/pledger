class PledgesController < ApplicationController

  def new

    @trackee = params[:trackee_id]

  end

end