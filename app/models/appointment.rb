class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :start_time, presence: true

  default_scope -> { order(:start_time) }  # Our meetings will be ordered by their start_time by default

  def time
    "#{start_time.strftime('%I:%M %p')}"
  end
end
