class Image < ApplicationRecord
    has_many :likes, as: :likeable
end
