class EmojiCard < ActiveRecord::Migration[5.2]
  def change
    create_table :emoji_cards do |t|
      t.integer :emoji_id
      t.integer :card_id

      t.timestamps
    end
  end
end
