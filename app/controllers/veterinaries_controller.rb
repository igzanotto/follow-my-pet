class VeterinariesController < ApplicationController
  def index
    @pet = Pet.find(params[:pet_id])
    if params[:query].present? # si la query esta presente
      if User.search_by_location(params[:query]).size.positive? # Si la query encuentra algo
        @veterinaries = User.where(type_of_user: "Veterinary")
        @vet_filtered = @veterinaries.search_by_location(params[:query])
          # GEOCODING
          @markers = @vet_filtered.geocoded.map do |vet|
          {
            lat: vet.latitude,
            lng: vet.longitude
          }
          end
      else
        "No results found" # Si no encuentra resultados
      end
    else
      @vet_filtered = User.where(type_of_user: "Veterinary") # Si no buscamos nada que traiga todas

        # GEOCODING
        @markers = @vet_filtered.geocoded.map do |vet|
          {
            lat: vet.latitude,
            lng: vet.longitude
          }
        end
    end

    # STIMULUS FOR SEARCH
    respond_to do |format|
      format.html
      format.text { render partial: "veterinaries/card", locals: {veterinaries: @veterinaries}, formats: [:html] }
    end
  end

  def show
    @veterinary = User.find(params[:id])
    @appointment = Appointment.new
  end
end
