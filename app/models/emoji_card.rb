class EmojiCard < ApplicationRecord
  belongs_to :card
  belongs_to :emoji
end
