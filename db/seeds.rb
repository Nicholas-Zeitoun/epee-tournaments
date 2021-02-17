# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fencer.create!({
  name: "Alexander English",
  ranking: 1
})

Fencer.create!({
  name: "Domenic Yates",
  ranking: 2
})

Fencer.create!({
  name: "Peter Osvath",
  ranking: 3
})

Fencer.create!({
  name: "Simon Summerfield",
  ranking: 4
})

Fencer.create!({
  name: "Jacob Ohrt",
  ranking: 5
})

puts 'Finished! 🤺'
