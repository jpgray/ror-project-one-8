class Card < ApplicationRecord
  belongs_to :user
  belongs_to :duelist
  has_many :comments
end
