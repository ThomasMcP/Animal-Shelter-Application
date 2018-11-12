require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('pry-byebug')

Animal.delete_all()

animal1 = Animal.new({
  'name' => 'David Tennant',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2018-08-14',
  'age' => 2 })
animal1.save

animal2 = Animal.new({
  'name' => 'Christopher Eccelston',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2008-02-15',
  'age' => 10 })
animal2.save

owner1 = Owner.new({
  'name' => 'Johnny Teaspoons',
  'address' => '44 Wire Place, Edinburgh',
  'pet_id' => animal1.id })
owner1.save

binding.pry
nil
