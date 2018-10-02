class User < ApplicationRecord
  has_many :emojis, through: :emoji_cards
  has_many :cards
end
