class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :start_time, presence: true
  validate :date_invalid
  before_save :date_invalid
  before_update :date_invalid

  default_scope -> { order(:start_time) }  # Our meetings will be ordered by their start_time by default

  def time
    "#{start_time.strftime('%I:%M %p')}"
  end

  def date_invalid
    if self.start_time < Date.today
      self.errors.add(:start_time, "Date must be greater than today")
    end
  end
  # def start_time_cannot_be_end_time
  #   if start_time && end_time
  #     if start_time > end_time
  #       errors.add(:end_time, "can't be less than start time")
  #     end
  #   end
  # end


end
