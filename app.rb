require "sinatra"

set :session_secret, 'super secret'

get '/' do
  "Hello World!"
end

get '/secret' do
  "This should be members only"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
