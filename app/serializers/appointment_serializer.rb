class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :schedule_id, :start_time, :end_time
end
