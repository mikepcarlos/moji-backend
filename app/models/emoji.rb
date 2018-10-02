class Emoji < ApplicationRecord
  has_many :emoji_cards
  has_many :cards, through: :emoji_cards
end
