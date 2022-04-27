class Event < ApplicationRecord
  validates :title, length: { minimum: 3, maximum: 50 }
  validates :description, length: { maximum: 600 }
  validates :starts_at, date: { after: Proc.new { Time.now },
                                message: "deve ser maior que a data atual!" }

  validates :ends_at, date: { after: :starts_at, message: "deve ser maior que a Data de início!" }

  belongs_to :created_by, class_name: "User"

  has_many :reminders, dependent: :destroy
end
