class VaccinationsController < ApplicationController
  def index
    @vaccinations = Pet.find(params[:id]).vaccinations
  end
end
