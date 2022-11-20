puts 'Seeding Database'

# member seeds

# enter here

# genre seeds

# book seeds
Book.create([
  { title: 'Twilight', is_checked_out: true, isbn: 9780316327336, author_id: 1 },
  { title: 'New Moon', is_checked_out: false, isbn: 9780316327787, author_id: 1 },
  { title: 'Eclipse', is_checked_out: false, isbn: 9780316328142, author_id: 1 },
  { title: 'Breaking Dawn', is_checked_out: false, isbn: 9780316067928, author_id: 1 },
  { title: 'The Host', is_checked_out: false, isbn: 9780316068055, author_id: 1 },
  { title: 'The Chemist', is_checked_out: false, isbn: 9780316387842, author_id: 1 },
  { title: 'Midnight Sun', is_checked_out: false, isbn: 9780316629454, author_id: 1 },
  { title: 'Life and Death: Twilight Reimagined', is_checked_out: false, isbn: 9780316300865, author_id: 1 },
  { title: "Harry Potter and the Philosopher's Stone", is_checked_out: false, isbn: 9780590353403, author_id: 2 },
  { title: 'Harry Potter and the Chamber of Secrets', is_checked_out: false, isbn: 9780439064873, author_id: 2 },
  { title: 'Harry Potter and the Prisoner of Azkaban', is_checked_out: false, isbn: 9780439136358, author_id: 2 },
  { title: 'Harry Potter and the Goblet of Fire', is_checked_out: false, isbn: 9780439139595, author_id: 2 },
  { title: 'Harry Potter and the Order of the Phoenix', is_checked_out: false, isbn: 9780439358064, author_id: 2 },
  { title: 'Harry Potter and the Half-Blood Prince', is_checked_out: false, isbn: 9780439784542, author_id: 2 },
  { title: 'Harry Potter and the Deathly Hallows', is_checked_out: false, isbn: 9780545010221, author_id: 2 },
  { title: 'Fantastic Beasts & Where to Find Them', is_checked_out: false, isbn: 9780751574951, author_id: 2 },
  { title: 'Fantastic Beasts: The Crimes of Grindelwald', is_checked_out: false, isbn: 9780751578287, author_id: 2 },
  { title: 'Fantastic Beasts: The Secrets of Dumbledore', is_checked_out: false, isbn: 9781338853681, author_id: 2 }
  #{ title: '', is_checked_out: false, isbn: , author_id: 2 },
])

# author seeds
author_list = [
  ['Stephenie','Meyer'],
  ['J.K.','Rowling']
]

author_list.each do |first, last|
  Author.create( first_name: first, last_name: last)
end

# books_genres join table seeds

# books_members join table seeds

puts 'Seeding Complete'