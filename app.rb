require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:myblogdb:sqlite3"

require "./models.rb"


get '/' do
  erb :index
end

post '/submit' do
  @books=Bookings.new(username: params[:username], age: params[:age], email: params[:email],phone:params[:phone],country: params[:country], date: params[:date], passengers: params[:passengers], meals: params[:meals])
  if @books.save

    redirect '/success'
  else

  redirect '/'
  end
end

get '/success' do
  erb :success
end