class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/books' do
    books = Book.all
    books.to_json(include: :author)
  end

  get '/members' do
    members = Member.all
    members.to_json
  end

end