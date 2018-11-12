require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require_relative('./animals_controller.rb')
also_reload('./models/*')

get '/home' do
  erb(:index)
end
