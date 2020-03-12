class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_many :reviews, as: :rateable
end
