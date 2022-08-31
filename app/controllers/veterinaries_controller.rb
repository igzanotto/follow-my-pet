class VeterinariesController < ApplicationController

  def show
    @appointment = Appointment.new
  end
end
