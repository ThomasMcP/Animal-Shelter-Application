require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
also_reload('./models/*')

get '/animals' do
  @animals = Animal.all
  erb(:"animals/index")
end

get '/animals/new' do
  @animals = Animal.all
  erb(:"animals/new")
end

post '/animals' do
  Animal.new(params).save
  redirect to '/animals'
end

get '/animals/:id' do
  @animal = Animal.find(params['id'])
  erb(:"animals/show")
end
