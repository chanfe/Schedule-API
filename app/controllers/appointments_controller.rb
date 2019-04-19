class AppointmentsController < ApplicationController

  def create
    @appointment = Appointment.create(strong_params)
    if @appointment.valid?
      render json: @appointment, status: :created
    else
      render json: { error: 'failed to create appointment' }, status: :not_acceptable
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    unless @appointment.nil?
      @appointment.destroy
      render json: @appointment
    else
      render json: { error: "Appointment not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:appointment).permit(:id, :schedule_id, :start_time, :end_time)
  end
end
