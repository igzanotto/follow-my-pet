class PetsController < ApplicationController
  def index
    @user = current_user.id
    @pets = Pet.where(user_id: @user)
  end

  def show
    @pet = Pet.find(params[:id])
  end
end
