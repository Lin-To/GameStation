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
  'Nintendo 3DS',
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
      game: rand(2) == 1,
      edition: Platforms.sample,
      user: u
    )
  end
end

a = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Overcooked",
      description: "A fun game to play with 3 other friends",
      game: true,
      edition: 'Nintendo Switch',
      user: a
    )

a = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Overcooked",
      description: "A fun game to play with 3 other friends",
      game: true,
      edition: 'Nintendo Switch',
      user: a
    )
b = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Most awesome limited edition gold color PS4",
      description: "Comes with latest version controllers",
      game: false,
      edition: 'PlayStation 4',
      user: b
    )
Game.create(
      name: "Sekiro: Shadows Die Twice",
      description: "SHINOBI EXECUTION! IMMORTALITY SEVERED!",
      game: true,
      edition: 'PlayStation 4',
      user: b
    )
Game.create(
      name: "FIFA 19",
      description: "Rekt ur friends xD",
      game: true,
      edition: 'PlayStation 4',
      user: b
    )
c = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Switch",
      description: "Good condition",
      game: false,
      edition: 'Nintendo Switch',
      user: c
    )
Game.create(
      name: "Smash bros",
      description: "Good game to play with friends, btw Samus is OP",
      game: true,
      edition: 'Nintendo Switch',
      user: c
    )
Game.create(
      name: "Zelda",
      description: "Recommended... best game ever",
      game: true,
      edition: 'Nintendo Switch',
      user: c
    )
d = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "GTA V",
      description: "Does GTA even need explanation?",
      game: true,
      edition: 'Xbox One',
      user: d
    )
Game.create(
      name: "Mortal Kombat 11",
      description: "One of the best MK games imo",
      game: true,
      edition: 'Xbox One',
      user: d
    )
Game.create(
      name: "Nice Xbox with black and white controllers",
      description: "Spend a nice Saturday evening with your friends",
      game: false,
      edition: 'Xbox One',
      user: d
    )
e = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Tetris",
      description: "Relive your childhood with Tetris",
      game: true,
      edition: 'Nintendo Entertainment System',
      user: e
    )

Game.create(
      name: "Super Mario Bros 2",
      description: "My favorite childhood game",
      game: true,
      edition: 'Nintendo Entertainment System',
      user: e
    )
Game.create(
      name: "Good NES",
      description: "Great working condition",
      game: false,
      edition: 'Nintendo Entertainment System',
      user: e
    )
Game.create(
      name: "Legend of Zelda",
      description: "Original Zelda game",
      game: true,
      edition: 'Nintendo Entertainment System',
      user: e
    )
f = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Pokemon Sun",
      description: "Catch them all ^_^",
      game: true,
      edition: 'Nintendo 3DS',
      user: f
    )
Game.create(
      name: "Pokemon Ultra Moon",
      description: "RECOMMENDED FOR ALL POKEMON FANS",
      game: true,
      edition: 'Nintendo 3DS',
      user: f
    )
g = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Acer Predator Helios 300 Gaming PC",
      description: "GTX 1060, 16GB RAM",
      game: false,
      edition: 'PC',
      user: f
    )
h = User.create(
    name: Faker::Name.name,
    description: Faker::Quote.famous_last_words
  )
Game.create(
      name: "Pokemon Sword",
      description: "LATEST Pokemon Game",
      game: true,
      edition: 'Nintendo Switch',
      user: h
    )

Game.create(
      name: "Pokemon Shield",
      description: "LATEST Pokemon Game",
      game: true,
      edition: 'Nintendo Switch',
      user: h
    )

Game.create(
      name: "PIKACHU EDITION Nintendo Switch",
      description: "It's PIKACHU edition!!!!",
      game: false,
      edition: 'Nintendo Switch',
      user: h
    )

Game.create(
      name: "Octopath Traveller",
      description: "Great turn-based RPG game by Square Enix",
      game: true,
      edition: 'Nintendo Switch',
      user: h
    )

p User.all
p Game.all
