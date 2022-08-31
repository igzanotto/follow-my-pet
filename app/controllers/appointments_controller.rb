class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:edit, :update, :destroy]
  before_action :set_pet, only: [:index]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params, user_id: params[:id_vet], pet_id: params[:id_pet])

    if @appointment.save
      redirect_to appointments_path
    else
      render 'veterinaries/show', status: :unprocessable_entity
    end
    # @appointment.pet = Pet.find(params[:pet_id]
    # @appointment.user = User.find(params[:id])
  end

  # Turnos de una mascota.
  def index
    # @pet = Pet.find(params[:id])
    @appointments = @pet.appointments
  end

  def edit
    # @appointment = Appointment.find(params[:id])
  end

  def update
    # @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to appointments_path
  end

  def destroy
    # @appointment = Appointment.find(params[:id])
    @appointment.destroy

    redirect_to appointments_path, status: :see_other
  end

  # Turnos del día del Vet.
  def my_appointments
    @user = current_user.id
    @appointments = Appointment.where(user_id: @user)
  end

  def my_patients
    # user(vet) ---> appointments ---> pet
    @user = current_user
    # @appointments = Appointment.where(user_id: @user)
    # @appointments.each do |appointment|
    #   @pet = appointment.pet.name
    # end

    @pets = Pet.all
    # @pets.each do |pet|
    #   pet.appointments.each do |appointment|
    #     appointment.user.name
    #   end
    # end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end

# pet.appointments.each do |appointment| { appointment.pet.name }
