class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:edit, :update]

  def new
  end

  def create
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
    @appointments = Appointment.all
  end

  def my_patients
    @pets = Pet.where()
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

end
