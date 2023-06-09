puts "🌱 Seeding spices..."

# Seed your database here

# Create Artists
15.times do
    Artist.create(
      name: Faker::Music.band,
      image_url: Faker::Internet.url
    )
  end
  
  # Create Songs
  50.times do
    Song.create(
      title: Faker::Music::GratefulDead.song,
      genre: Faker::Music.genre,
      description: Faker::Lorem.sentence,
      release_date: Faker::Date.backward(days: 365),
      artist_id: rand(1..5),
      image_path: Faker::LoremFlickr.image(size: "300x300", search_terms: ['music', 'poster'])
      )
  end
  
  # Create Comments
  30.times do
    Comment.create(
      comment: Faker::Lorem.sentence,
      likes: rand(0..10),
      song_id: rand(1..10)
    )
  end

puts "✅ Done seeding!"
