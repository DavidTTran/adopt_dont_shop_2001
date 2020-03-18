class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new
  end

  def add
    Shelter.create(shelter_params)
    redirect_to '/shelters'
  end

  def shelter_params
    params.permit(:name, :address, :city, :state, :zip)
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def edit
  end

  def update
    require "pry"; binding.pry
  end

end
