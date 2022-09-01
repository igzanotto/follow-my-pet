class ClinicalHistoriesController < ApplicationController

  def index
     @clinical_histories = Pet.find(params[:pet_id]).clinical_histories

    # @clinical_histories = ClinicalHistory.all

    # if params[:query].present? && Offer.search_by_location(params[:query]).size > 0
    #   @offers = Offer.search_by_location(params[:query])
    # else
    #   @offers = Offer.all
  end

  def new
    @clinical_history = ClinicalHistory.new
    @pet = Pet.find(params[:pet_id])
  end

    def create
      @clinical_history = ClinicalHistory.new(clinical_history_params)
      @clinical_history.user_id = current_user.id
      @pet = Pet.find(params[:pet_id])
      @clinical_history.pet_id = @pet.id
      @clinical_history.save

      redirect_to pet_clinical_histories_path
      # @offer.user_id = current_user.id
      # if @clinical_history.save
      # else
        # render 'offers/new', status: :unprocessable_entity
      # end
    end

    def edit
      @clinical_history = ClinicalHistory.find(params[:id])
    end

    def update
      @clinical_history = ClinicalHistory.find(params[:id])
      @clinical_history.update(clinical_history_params) # Will raise ActiveModel::ForbiddenAttributesError

      redirect_to pet_clinical_histories_path
    end


    private

  def clinical_history_params
    params.require(:clinical_history).permit(:description)

    # :description, :location, :price_per_night, photos: [])
  end
end





# resources :pets do
#  resources :clinical_histories, except: [:show, :destroy]
# end
