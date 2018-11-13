require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
also_reload('./models/*')

get '/owners' do
  @animals = Animal.all()
  @owners = Owner.all
  erb(:"owners/index")
end

get '/owners/new' do
  @animals = Animal.all
  @owners = Owner.all
  erb(:"owners/new")
end

post '/owners' do
  Owner.new(params).save
  redirect to '/owners'
end

get '/owners/:id' do
  @owner = Owner.find(params['id'])
  erb(:"owners/show")
end

get '/owners/:id/edit' do
  @animals = Animal.all
  @owners = Owner.all()
  @owner = Owner.find(params['id'])
  erb(:"owners/edit")
end

post '/owners/:id' do
  Owner.new(params).update
  redirect to "/owners/#{params['id']}"
end

# post '/owners/:id' do
#   @animals = Animal.all
#   Owner.new(params).update
#   redirect to "/owner/#{params['id']}"
# end

post '/owners/:id/delete' do
  Owner.destroy(params['id'])
  redirect to '/owners'
end
