class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:edit, :update, :destroy]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:id])
    # necesito el id del pet y el id del vet

  end

  # Turnos de una mascota.
  def index
    @appointments = Appointment.all
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
    @user = current_user.id
    @appointments = Appointment.where(user_id: @user)
    @appointments.each do |appointment|
      @pet = appointment.pet.name
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
