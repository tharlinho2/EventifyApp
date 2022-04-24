class Event < ApplicationRecord
  validates :title, :starts_at, :ends_at, presence: true

  belongs_to :created_by, class_name: "User"
end
