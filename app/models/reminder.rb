class Reminder < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :time_value, :time_unit, :reminder_at, presence: true

  def calculateDate(value, time_unit, starts_at)
    case time_unit
    when "MINUTE"
      return starts_at - value.minutes
    when "HOUR"
      return starts_at - value.hours
    when "DAY"
      return starts_at - value.day
    when "WEEK"
      return starts_at - value.week
    end
  end
end
