class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def show
    @schedule = Appointment.where(:id == :schedule_id)

    render json: @schedule
  end

  def create
    @schedule = Schedule.create(strong_params)
    if @schedule.valid?
      render json: @appointment, status: :created
    else
      render json: { error: 'failed to create schedule' }, status: :not_acceptable
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    unless @schedule.nil?
      @schedule.destroy
      render json: @schedule
    else
      render json: { error: "Schedule not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:schedule).permit(:id, :name)
  end

end
