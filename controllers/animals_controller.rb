require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
also_reload('./models/*')

get '/animals' do
  @animals = Animal.all
  erb(:"animals/animals")
end

# get '/animals/new' do
#   @houses = Animal.all
#   erb(:new)
# end
