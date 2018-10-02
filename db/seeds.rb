sad_face = Emoji.create(title: "Sad Face", emotion: "Sad")
love_face = Emoji.create(title: "Lovey Dovey", emotion: "Love")
laughing = Emoji.create(title: "Laughing", emotion: "Happiness")
shocked = Emoji.create(title: "Shocked", emotion: "Shocked")

user_1 = User.create(username: "Mikey")
user_2 = User.create(username: "Zohra")

jazzy_card = Card.create(title: "Jazzy", emoji_ids: [2, 3], user: user_1)
pop_card = Card.create(title: "Pop", emoji_ids: [1, 4], user: user_2)
