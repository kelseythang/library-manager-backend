class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # book routes
  get '/books' do
    books = Book.all.order(:title)
    books.to_json(only: [:id, :title, :is_checked_out, :isbn], 
      include: { 
        author: { only: [:first_name, :last_name] },
        genre: { only: [:name] },
        checkout: { only: [], 
          include: {
            member: { only: [:first_name, :last_name] }
          } }
      }
    )
  end

  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json(only: [:id, :title, :is_checked_out, :isbn], 
      include: { 
        author: { only: [:first_name, :last_name] },
        genre: { only: [:name] },
        checkout: { only: [], 
          include: {
            member: { only: [:first_name, :last_name] }
          } }
      }
    )
  end
  
  # member routes
  get '/members' do
    members = Member.all
    members.to_json(
      include: {
        records: { only: [:id, :created_at], 
          include: {
            book: { only: [:title], 
              include: {
                author: { only: [:first_name, :last_name] }
              } }
          } },
        checkouts: { only: [:id, :created_at], 
          include: {
            book: { only: [:title], 
              include: {
                author: { only: [:first_name, :last_name] }
              } }
          } }
      }
    )
  end

  get '/members/:id' do
    member = Member.find(params[:id])
    member.to_json(
      include: {
        records: { only: [:id, :created_at], 
          include: {
            book: { only: [:title], 
              include: {
                author: { only: [:first_name, :last_name] }
              } }
          } },
        checkouts: { only: [:id, :created_at], 
          include: {
            book: { only: [:title], 
              include: {
                author: { only: [:first_name, :last_name] }
              } }
          } }
      }
    )
  end

  post '/members' do
    member = Member.create(
      library_card_number: Member.generate_new_id,
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      fines: params[:fines]
    )
    member.to_json
  end

  patch '/members/:id' do
    member = Member.find(params[:id])
    member.update(
      fines: params[:fines]
    )
    member.to_json(
      include: {
        records: { only: [:id, :created_at], 
          include: {
            book: { only: [:title], 
              include: {
                author: { only: [:first_name, :last_name] }
              } }
          } },
        checkouts: { only: [:id, :created_at], 
          include: {
            book: { only: [:title], 
              include: {
                author: { only: [:first_name, :last_name] }
              } }
          } }
      }
    )
  end
  
  delete '/members/:id' do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end

 
  # author routes
  get '/authors' do
    author = Author.all.order(:last_name)
    author.to_json(include: { books: { only: [:title, :isbn] } })
  end

  get '/authors/:id' do
    author = Author.find(params[:id])
    author.to_json(include: { books: { only: [:title, :isbn] } })
  end

  # genre routes
  get '/genres' do
    genres = Genre.all
    genres.to_json(
      include: {
        books: { only: [:id, :title, :isbn],
        include: {
          author: { only: [:first_name, :last_name] }
        } }
      }
    )
  end

  # checkouts routes
  get '/checkouts' do
    checkouts = Checkout.all
    checkouts.to_json( only: [:created_at],
      include: {
        book: { only: [:title] },
        member: { only: [:first_name, :last_name] }
      }
    )
  end

end