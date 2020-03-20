class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @shelter = Shelter.find(params[:shelter_id])
  end

  def create
    @shelter = Shelter.find(params[:shelter_id])
    @shelter.pets.create(pet_params_new)
    redirect_to ("/shelters/#{@shelter.id}/pets")
  end

  def edit
    @pet = Pet.find(params[:pet_id])
  end

  def update
    @pet = Pet.find(params[:pet_id])
    @pet.update(pet_params_new)
    redirect_to "/pets/#{@pet.id}"
  end

  private
  def pet_params_new
    params[:adoption_status] = "Adoptable"
    params.permit(:image, :name, :description, :approximate_age, :sex, :adoption_status)
  end
end
