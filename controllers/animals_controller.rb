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

get '/animals/:id/edit' do
  @animal = Animal.find(params['id'])
  erb(:"animals/edit")
end

post '/animals/:id' do
  Animal.new(params).update
  redirect to "/animals/#{params['id']}"
end

post '/animals/:id/delete' do
  Animal.destroy(params['id'])
  redirect to '/animals'
end
