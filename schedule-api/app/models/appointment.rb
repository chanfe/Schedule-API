class Appointment < ApplicationRecord
  belongs_to :schedule;
  validate :end_time_after_start_time?

  def end_time_after_start_time?
    if start_time >= end_time
      errors.add :end_time, "must be more then start time"
    end
  end

end
