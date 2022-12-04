puts 'Seeding Database'

# 50 initial member seeds
fines = Random.new

50.times do
  Member.create(
    library_card_number: Faker::Number.number(digits: 6),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    phone_number: Faker::Number.number(digits: 10).to_s.insert(0, '(').insert(4, ')').insert(5,' ').insert(9,'-'),
    fines: sprintf('%.2f',Faker::Number.between(from: 0.0, to: 10.0))
  )
end

# records join table seeds
200.times do (
  Record.create(
    book_id: Faker::Number.within(range: 1..100),
    member_id: Faker::Number.within(range: 1..50)
  )
)
end

#  25 current checkouts join table seeds - explicit due to booleans in book seeds
checkout_list = [
  [1, 1], [2, 1], [3, 1], [15, 5], [23, 5],
  [25, 7], [32, 12], [35, 13], [45, 15], [47, 16],
  [50, 22], [51, 24], [59, 24], [68, 26], [69, 28], 
  [73, 34], [78, 37], [82, 37], [85, 37], [86, 42], 
  [90, 43], [94, 44], [95, 44], [98, 48], [100, 50]
] 

checkout_list.each do |book, member|
  Checkout.create(book_id: book, member_id: member)
  Record.create(book_id: book, member_id: member)
end

# author seeds
author_list = [
  ['Stephenie', 'Meyer'],
  ['J.K.', 'Rowling'],
  ['J.R.R.', 'Tolkien'],
  ['Frank', 'Herbert'],
  ['Stephen', 'King'],
  ['Dean', 'Koontz'], 
  ['David', 'Flanagan'], 
  ['Marijn', 'Haverbeke'],
  ['Jeremy', 'Evans'],
  ['David A.', 'Black'], 
  ['Sandi', 'Metz'],
  ['Gillian', 'Flynn'],
  ['Agatha', 'Christie'], 
  ['Dennis', 'Lehane'],
  ['Orson Scott', 'Card'],
  ['Jenny', 'Han'],
  ['Tracy', 'Wolff'],
  ['Yann', 'Martel'],
  ['Douglas', 'Adams'], 
  ['Diana Wynne', 'Jones'],
  ['George R.R.', 'Martin'],
  ['Cory', 'Alhoff'],
  ['Gayle Laakmann', 'McDowell'],
  ['Jon', 'Duckett'],
  ['David', 'Thomas'],
  ['Jay', 'Wengrow'],
  ['Christopher', 'Paolini'],
  ['James', 'Dashner']
]

author_list.each do |first, last|
  Author.create(first_name: first, last_name: last)
end

# genre seeds
genre_list = ['Adventure', 'Fantasy', 'Horror', 'Mystery', 'Romance', 'Science Fiction', 'Technology']

genre_list.each do |type|
  Genre.create(name: type)
end

# 100 initial book seeds
Book.create([
  { title: 'Twilight', is_checked_out: true, isbn: 9780316327336, author_id: 1, genre_id: 5 },
  { title: 'New Moon', is_checked_out: true, isbn: 9780316327787, author_id: 1, genre_id: 5 },
  { title: 'Eclipse', is_checked_out: true, isbn: 9780316328142, author_id: 1, genre_id: 5 },
  { title: 'Breaking Dawn', is_checked_out: false, isbn: 9780316067928, author_id: 1, genre_id: 5 },
  { title: 'The Host', is_checked_out: false, isbn: 9780316068055, author_id: 1, genre_id: 5 },
  { title: 'The Chemist', is_checked_out: false, isbn: 9780316387842, author_id: 1, genre_id: 5 },
  { title: 'Midnight Sun', is_checked_out: false, isbn: 9780316629454, author_id: 1, genre_id: 5 },
  { title: 'Life and Death: Twilight Reimagined', is_checked_out: false, isbn: 9780316300865, author_id: 1, genre_id: 5  },
  { title: 'Harry Potter and the Philosopher\'s Stone', is_checked_out: false, isbn: 9780590353403, author_id: 2, genre_id: 2 },
  { title: 'Harry Potter and the Chamber of Secrets', is_checked_out: false, isbn: 9780439064873, author_id: 2, genre_id: 2 },
  { title: 'Harry Potter and the Prisoner of Azkaban', is_checked_out: false, isbn: 9780439136358, author_id: 2, genre_id: 2 },
  { title: 'Harry Potter and the Goblet of Fire', is_checked_out: false, isbn: 9780439139595, author_id: 2, genre_id: 2 },
  { title: 'Harry Potter and the Order of the Phoenix', is_checked_out: false, isbn: 9780439358064, author_id: 2, genre_id: 2 },
  { title: 'Harry Potter and the Half-Blood Prince', is_checked_out: false, isbn: 9780439784542, author_id: 2, genre_id: 2 },
  { title: 'Harry Potter and the Deathly Hallows', is_checked_out: true, isbn: 9780545010221, author_id: 2, genre_id: 2 },
  { title: 'Fantastic Beasts & Where to Find Them', is_checked_out: false, isbn: 9780751574951, author_id: 2, genre_id: 2 },
  { title: 'Fantastic Beasts: The Crimes of Grindelwald', is_checked_out: false, isbn: 9780751578287, author_id: 2, genre_id: 2 },
  { title: 'Fantastic Beasts: The Secrets of Dumbledore', is_checked_out: false, isbn: 9781338853681, author_id: 2, genre_id: 2 },
  { title: 'The Hobbit', is_checked_out: false, isbn: 9780547928227, author_id: 3, genre_id: 1 },
  { title: 'The Fellowship of the Ring', is_checked_out: false, isbn: 9780547928210, author_id: 3, genre_id: 1 },
  { title: 'The Two Towers', is_checked_out: false, isbn: 9780547928203, author_id: 3, genre_id: 1 },
  { title: 'The Return of the King', is_checked_out: false, isbn: 9780547928197, author_id: 3, genre_id: 1 },
  { title: 'The Silmarillion', is_checked_out: true, isbn: 9780544338012, author_id: 3 , genre_id: 1},
  { title: 'Unfinished Tales of Numenor and Middle-Earth', is_checked_out: false, isbn: 9780544337992, author_id: 3, genre_id: 1 },
  { title: 'The Children of Hurin', is_checked_out: true, isbn: 9780618894642, author_id: 3, genre_id: 1 },
  { title: 'Beren and Luthien', is_checked_out: false, isbn: 9781328791825, author_id: 3, genre_id: 1 },
  { title: 'Dune', is_checked_out: false, isbn: 9780441172719, author_id: 4, genre_id: 6 },
  { title: 'Dune Messiah', is_checked_out: false, isbn: 9780593098233, author_id: 4, genre_id: 6 },
  { title: 'Children of Dune', is_checked_out: false, isbn: 9780593098240, author_id: 4, genre_id: 6 },
  { title: 'God Emperor of Dune', is_checked_out: false, isbn: 9780593098257, author_id: 4, genre_id: 6 },
  { title: 'Heretics of Dune', is_checked_out: false, isbn: 9780593098264, author_id: 4, genre_id: 6 },
  { title: 'Chapterhouse: Dune', is_checked_out: true, isbn: 9780593098271, author_id: 4, genre_id: 6 },
  { title: 'It', is_checked_out: false, isbn: 9781982127794, author_id: 5, genre_id: 3 },
  { title: 'Carrie', is_checked_out: false, isbn: 9780307743664, author_id: 5, genre_id: 3 },
  { title: 'The Dark Tower I: The Gunslinger', is_checked_out: true, isbn: 9781501143519, author_id: 5, genre_id: 3 },
  { title: 'The Dark Tower II: The Drawing of the Three', is_checked_out: false, isbn: 9781501143533, author_id: 5, genre_id: 3 },
  { title: 'The Dark Tower III: The Waste Lands', is_checked_out: false, isbn: 9781501143540, author_id: 5, genre_id: 3 },
  { title: 'The Dark Tower IV: Wizard and Glass', is_checked_out: false, isbn: 9781501143557, author_id: 5, genre_id: 3 },
  { title: 'The Dark Tower V: Wolves of the Calla', is_checked_out: false, isbn: 9780743251624, author_id: 5, genre_id: 3 },
  { title: 'The Dark Tower VI: Song of Susannah', is_checked_out: false, isbn: 9780743254557, author_id: 5, genre_id: 3 },
  { title: 'The Dark Tower VII: The Dark Tower', is_checked_out: false, isbn: 9780743254564, author_id: 5, genre_id: 3 },
  { title: 'Pet Sematary', is_checked_out: false, isbn: 9780743412285, author_id: 5, genre_id: 3 },
  { title: 'False Memory', is_checked_out: false, isbn: 9780345533296, author_id: 6, genre_id: 3 },
  { title: 'Ticktock', is_checked_out: false, isbn: 9780345533456, author_id: 6, genre_id: 3 },
  { title: 'Midnight', is_checked_out: true, isbn: 9780593441367, author_id: 6, genre_id: 3 },
  { title: 'Velocity', is_checked_out: false, isbn: 9780345533463, author_id: 6, genre_id: 3 },
  { title: 'Sole Survivor', is_checked_out: true, isbn: 9780345533449, author_id: 6, genre_id: 3 },
  { title: 'Odd Thomas', is_checked_out: false, isbn: 9780345533425, author_id: 6, genre_id: 3 },
  { title: 'JavaScript: The Definitive Guide', is_checked_out: false, isbn: 9781491952023, author_id: 7, genre_id: 7 },
  { title: 'Eloquent JavaScript, 3rd Edition', is_checked_out: true, isbn: 9781593279509, author_id: 8, genre_id: 7 },
  { title: 'Polished Ruby Programming', is_checked_out: true, isbn: 9781801072724, author_id: 9, genre_id: 7 },
  { title: 'The Ruby Programming Language: Everything You Need to Know', is_checked_out: false, isbn: 9780596516178, author_id: 7, genre_id: 7 },
  { title: 'The Well-Grounded Rubyist', is_checked_out: false, isbn: 9781617295218, author_id: 10, genre_id: 7 },
  { title: 'Practical Object-Oriented Design: An Agile Primer Using Ruby', is_checked_out: false, isbn: 9780134456478, author_id: 11, genre_id: 7 },
  { title: 'Gone Girl', is_checked_out: false, isbn: 9780307588364, author_id: 12, genre_id: 4 },
  { title: 'And Then There Were None', is_checked_out: false, isbn: 9780062073488, author_id: 13, genre_id: 4 },
  { title: 'Murder on the Orient Express', is_checked_out: false, isbn: 9780062073495, author_id: 13, genre_id: 4 },
  { title: 'Death on the Nile', is_checked_out: false, isbn: 9780062073556, author_id: 13, genre_id: 4 },
  { title: 'Shutter Island', is_checked_out: true, isbn: 9780061898815, author_id: 14, genre_id: 4 },
  { title: 'Ender\'s Game', is_checked_out: false, isbn: 9781250773029, author_id: 15, genre_id: 6 },
  { title: 'Speaker for the Dead', is_checked_out: false, isbn: 9781250773050, author_id: 15, genre_id: 6 },
  { title: 'Xenocide', is_checked_out: false, isbn: 9781250773074, author_id: 15, genre_id: 6 },
  { title: 'Children of the Mind', is_checked_out: false, isbn: 9781250773104, author_id: 15, genre_id: 6 },
  { title: 'First Meetings', is_checked_out: false, isbn: 9780765308733, author_id: 15, genre_id: 6 },
  { title: 'A War of Gifts: An Ender Story', is_checked_out: false, isbn: 9780765312822, author_id: 15, genre_id: 6 },
  { title: 'Ender in Exile', is_checked_out: false, isbn: 9781250773111, author_id: 15, genre_id: 6 },
  { title: 'To All the Boys I\'ve Loved Before', is_checked_out: false, isbn: 9781442426719, author_id: 16, genre_id: 5 },
  { title: 'P.S. I Still Love You', is_checked_out: true, isbn: 9781442426740, author_id: 16, genre_id: 5 },
  { title: 'Always and Forever, Lara Jean', is_checked_out: true, isbn: 9781481430494, author_id: 16, genre_id: 5 },
  { title: 'Crave', is_checked_out: false, isbn: 9781640638952, author_id: 17, genre_id: 5 },
  { title: 'Crush', is_checked_out: false, isbn: 9781682815786, author_id: 17, genre_id: 5 },
  { title: 'Covet', is_checked_out: false, isbn: 9781682815816, author_id: 17, genre_id: 5 },
  { title: 'Court', is_checked_out: true, isbn: 9781649370600, author_id: 17, genre_id: 5 },
  { title: 'Charm', is_checked_out: false, isbn: 9781649371492, author_id: 17, genre_id: 5 },
  { title: 'Cherish', is_checked_out: false, isbn: 9781649373168, author_id: 17, genre_id: 5 },
  { title: 'Life of Pi', is_checked_out: false, isbn: 9780156027328, author_id: 18, genre_id: 1 },
  { title: 'The Hitchhiker\'s Guide to the Galaxy', is_checked_out: false, isbn: 9780345391803, author_id: 19, genre_id: 1 },
  { title: 'So Long, and Thanks for All the Fish', is_checked_out: true, isbn: 9780345479969, author_id: 10, genre_id: 1},
  { title: 'Howl\'s Moving Castle', is_checked_out: false, isbn: 9780061478789, author_id: 20, genre_id: 1 },
  { title: 'Game of Thrones', is_checked_out: false, isbn: 9780553381689, author_id: 21, genre_id: 2 },
  { title: 'Fire & Blood', is_checked_out: false, isbn: 9781524796303, author_id: 21, genre_id: 2 },
  { title: 'A Knight of the Seven Kingdoms', is_checked_out: true, isbn: 9781101965887, author_id: 21, genre_id: 2 },
  { title: 'A Dance with Dragons', is_checked_out: false, isbn: 9780553385953, author_id: 21, genre_id: 2 },
  { title: 'The Ice Dragon', is_checked_out: false, isbn: 9780008518776, author_id: 21, genre_id: 2 },
  { title: 'The Voyaging', is_checked_out: true, isbn: 9780345537997, author_id: 21, genre_id: 2 },
  { title: 'The Self-Taught Programmer', is_checked_out: true, isbn: 9780999685907, author_id: 22, genre_id: 7 },
  { title: 'Cracking the Coding Interview', is_checked_out: false, isbn: 9780984782857, author_id: 23, genre_id: 7 },
  { title: 'JavaScript and jQuery', is_checked_out: false, isbn: 9781118531648, author_id: 24, genre_id: 7 },
  { title: 'PHP & MySQL', is_checked_out: false, isbn: 9781119149224, author_id: 24, genre_id: 7 },
  { title: 'HTML & CSS', is_checked_out: true, isbn: 9788850334049, author_id: 24, genre_id: 7 },
  { title: 'The Pragmatic Programmer', is_checked_out: false, isbn: 9780135957059, author_id: 25, genre_id: 7 },
  { title: 'Data Structures and Algorithms, Second Edition', is_checked_out: false, isbn: 9781680507225, author_id: 26, genre_id: 7 },
  { title: 'Eragon', is_checked_out: false, isbn: 9780375826689, author_id: 27, genre_id: 2 },
  { title: 'Eldest', is_checked_out: true, isbn: 9780375840401, author_id: 27, genre_id: 2 },
  { title: 'Brisingr', is_checked_out: true, isbn: 9780375826726, author_id: 27, genre_id: 2 },
  { title: 'Inheritance', is_checked_out: false, isbn: 9780375846311, author_id: 27, genre_id: 2 },
  { title: 'The Maze Runner', is_checked_out: false, isbn: 9781909489400, author_id: 28, genre_id: 1 },
  { title: 'The Scorch Trials', is_checked_out: true, isbn: 9781909489417, author_id: 28, genre_id: 1 },
  { title: 'The Death Cure', is_checked_out: false, isbn: 9780385738781, author_id: 28, genre_id: 1 },
  { title: 'The Kill Order', is_checked_out: true, isbn: 9780385742894, author_id: 28, genre_id: 1 }
])

puts 'Seeding Complete'