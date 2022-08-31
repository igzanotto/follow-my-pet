class StudiesController < ApplicationController
  def index
    @studies = Pet.find(params[:id]).studies
  end
end
