class Reminder < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :time_value, :reminder_at, :time_unit, presence: true
  validates :reminder_at, date: { after: Proc.new { Time.now }, message: "não pode ser menor que a data atual!" }

  scope :desc_order, -> { order(reminder_at: :desc) }
end
