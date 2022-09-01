class StudiesController < ApplicationController
  def index
    @studies = Pet.find(params[:pet_id]).studies
  end
end
