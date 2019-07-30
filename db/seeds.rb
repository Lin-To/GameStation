Game.destroy_all
User.destroy_all

5.times do
  u = User.create(name:Faker::Name.name,
    description: Faker::Quote.famous_last_words
    )
  3.times do
    g = Game.create(
      name: Faker::Game.title,
      description: "something funny",
      game: true,
      edition: Faker::Game.platform,
      user: u
      )
  end
end
p User.all
p Game.all
