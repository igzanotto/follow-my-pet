class VaccinationsController < ApplicationController
  def index
    @vaccinations = Pet.find(params[:pet_id]).vaccinations
    @pet = Pet.find(params[:pet_id])
  end

  def new
    @vaccination = Vaccination.new
    @pet = Pet.find(params[:pet_id])
  end

  def create
    @clinical_history = ClinicalHistory.new
    @clinical_history.user_id = current_user.id
    @pet = Pet.find(params[:pet_id])
    @clinical_history.pet_id = @pet.id
    @clinical_history.name = "Vaccination"
    @clinical_history.description = "Vaccination"
    @clinical_history.type_of_history = "Vaccination"
    @clinical_history.date = Date.today
    @clinical_history.save

    @vaccination = Vaccination.new(vaccination_params)
    @vaccination.clinical_history_id = @clinical_history.id

    @clinical_history.name = "Vaccination: #{@vaccination.vaccine.name}"
    @clinical_history.description = "#{@vaccination.vaccine.name} vaccine | Expiration Date: #{@vaccination.expiration_date}"
    @clinical_history.save

    if @vaccination.save
      redirect_to pet_vaccinations_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @vaccination = Vaccination.find(params[:id])
    @pet = Pet.find(params[:pet_id])
  end

  def update
    @vaccination = Vaccination.find(params[:id])
    @vaccination.update(vaccination_params)
    @pet = Pet.find(params[:pet_id])

    redirect_to pet_vaccinations_path
  end

  private

  def vaccination_params
    params.require(:vaccination).permit(:vaccine_id, :expiration_date)
  end
end
