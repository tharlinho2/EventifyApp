class Reminder < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :reminder_at, :time_unit, presence: true

  validates :time_value, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }
  validates :reminder_at, date: { after: Proc.new { Time.now }, message: "não pode ser menor ou igual que a data atual!" }
end
