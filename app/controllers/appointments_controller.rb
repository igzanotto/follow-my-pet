class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:edit, :update, :destroy]

  def new
    @appointment = Appointment.new
  end

  def create
    # los valores de user_id y pet_id los traigo del new que estan en la vista /vet/show
    @pet = Pet.find(params[:pet_id])
    @user = User.find(params[:user_id])

    @appointment = Appointment.new(appointment_params)
    @appointment.pet = @pet
    @appointment.user = @user

    if @appointment.save
      redirect_to pet_appointments_path(@pet)
    else
      @veterinary = @user
      render 'veterinaries/show', status: :unprocessable_entity
    end
  end

  # Turnos de una mascota: pet_appointments_path
  def index
    @pet = Pet.find(params[:pet_id])
    @next_appointments = @pet.appointments.where('date >= ?', Date.today)
  end

  # Turnos del día del Vet: my_appointments_path
  def my_appointments
    @user = current_user.id
    @appointments = Appointment.where(user_id: @user)
    # quiero poder ver citas pasadas o no?
    @past_appointments = @appointments.where('date < ?', Date.today)
    @next_appointments = @appointments.where('date >= ?', Date.today)
    # render 'appointments/index'

  end

  def edit
    # @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment.update(appointment_params)
    if current_user.type_of_user == "Veterinary"
      redirect_to my_appointments_path
    else
      redirect_to pet_appointments_path(@appointment.pet.id)
    end
  end

  def destroy
    # @appointment = Appointment.find(params[:id])
    @appointment.destroy

    if current_user.type_of_user == "Veterinary"
      redirect_to my_appointments_path, status: :see_other
    else
      redirect_to pet_appointments_path(@appointment.pet.id), status: :see_other
    end
  end

  def my_patients
    @mypatients_pets = []
    @user = current_user

    @appointments = Appointment.where(user_id: @user)
    @clinical_histories = ClinicalHistory.where(user_id: @user)

    @appointments.each do |appointment|
      @mypatients_pets << appointment.pet
    end
    @clinical_histories.each do |ch|
      @mypatients_pets << ch.pet
    end

    @mypatients_pets.uniq!

    if params[:query].present?
      @pet_owners = User.search_by_name(params[:query])
      @pet_owners_filtered = []

      @pet_owners.each do |owner|
        @pet_owners_filtered << @mypatients_pets.select{ |pet| pet.user_id == owner.id}
      end
      @mypatients_pets = @pet_owners_filtered.flatten
    else
      return @mypatients_pets
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

end
