require "sinatra"

set :session_secret, 'super secret'

get '/' do
  "Hello World!"
end

get '/secret' do
  "This should be members only"
end

get '/cat' do
  erb(:index)
end
