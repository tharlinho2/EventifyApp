class Reminder < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :time_value, :time_unit, :reminder_at, presence: true
end
