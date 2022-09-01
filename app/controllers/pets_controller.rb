class PetsController < ApplicationController
  def index
    @user = current_user.id
    @pets = Pet.where(user_id: @user)
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
    #@species = SpeciesType.all
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user_id = current_user.id
    @pet.save
    redirect_to pets_path
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)

    redirect_to pets_path
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to pets_path, status: :see_other
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :birthday, :photo, :species_type_id)
  end
end
