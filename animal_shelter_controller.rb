require('sinatra')
require('sinatra/contrib/all')
require_relative('models/animal.rb')
require_relative('models/owner.rb')
also_reload('./models/*')

get '/scottish-animal-shelter' do
  erb(:index)
end
