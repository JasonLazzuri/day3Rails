# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

50.times do |index|
  new_movie = Movie.create!(title: Faker::Hipster.word,
                genre: Faker::Hipster.words(2),
                rating: Faker::Hipster.words(1),
                synopsis: Faker::Hipster.paragraph(2)
  )
  rand(1..5).times do |review|
    Review.create!(
    user: Faker::Hipster.word,
    stars: Faker::Hipster.words(3),
    movie_id: new_movie.id,
    analysis: Faker::Hipster.paragraph(2)
    )
  end
end

p "Created #{Movie.count} movies"
