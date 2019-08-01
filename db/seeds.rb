Booking.destroy_all
Game.destroy_all
User.destroy_all

Platforms = [
  'Xbox One',
  'PlayStation 3',
  'PlayStation 4',
  'PlayStation Portable',
  'PC',
  'Nintendo DS',
  'Nitendo 3DS',
  'Nintendo 64',
  'Xbox 360',
  'Nintendo Entertainment System',
  'Nintendo Switch'
]

5.times do
  u = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
  3.times do
    Game.create(
      name: Faker::Game.title,
      description: Faker::Quotes::Shakespeare.king_richard_iii_quote,
      status: 0,
      game: rand(2) == 1,
      edition: Platforms.sample,
      user: u
    )
  end
end
p User.all
p Game.all
