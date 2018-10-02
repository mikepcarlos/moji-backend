class Card < ApplicationRecord
  has_many :emoji_cards
  has_many :emojis, through: :emoji_cards
  belongs_to :user
end
