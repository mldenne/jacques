# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password"
  )

  10.times do
    Note.create!(
      user: user,
      title: Faker::Book.title,
      body: Faker::Lorem.paragraph
    )
  end
end

30.times do
  tag = Tag.create!(
    name: Faker::Hipster.word
  )
end

Note.all.each do |note|
  3.times do
    note.tags << Tag.find(rand(1..30))
  end
end
