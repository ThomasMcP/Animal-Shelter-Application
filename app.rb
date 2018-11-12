require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/animal_shelter_controller')
require_relative('controllers/animals_controller')
require_relative('controllers/owners_controller')

get '/home' do
  erb(:index)
end
