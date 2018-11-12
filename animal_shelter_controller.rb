require('sinatra')
require('sinatra/contrib/all')
require_relative('models/animal.rb')
require_relative('models/owner.rb')
also_reload('./models/*')

get '/animals' do
  @animals = Animal.all
  erb(:index) 
end
