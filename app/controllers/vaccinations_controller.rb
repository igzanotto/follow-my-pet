class VaccinationsController < ApplicationController
  def index
    @vaccinations = Pet.find(params[:pet_id]).vaccinations
  end
end
