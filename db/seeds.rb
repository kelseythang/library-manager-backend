puts 'Seeding Database'

Book.create(
  image_url: 'https://m.media-amazon.com/images/I/51otBwIRXoL.jpg',
  title: 'Twilight',
  author: 'Stephenie Meyer',
  genre: ['Fantasy', 'Romance', 'Vampire'],
  is_checked_out: false
)

puts 'Seeding Complete'