class VaccinationsController < ApplicationController
  def index
    @vaccinations = Pet.find(params[:pet_id]).vaccinations
    @pet = Pet.find(params[:pet_id])
  end
end
