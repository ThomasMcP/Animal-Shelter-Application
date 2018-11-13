require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('pry-byebug')

Animal.delete_all()
Owner.delete_all()

animal1 = Animal.new({
  'name' => 'David Tennant',
  'type' => 'Dog',
  'breed' => 'Husky',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2018-08-14',
  'age' => 2 })
animal1.save

animal2 = Animal.new({
  'name' => 'Christopher Eccelston',
  'type' => 'Cat',
  'breed' => 'Bald One',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2008-02-15',
  'age' => 10 })
animal2.save

animal3 = Animal.new({
  'name' => 'Maisie',
  'type' => 'Cat',
  'breed' => 'Ginger One',
  'adoption_status' => 'Not Adoptable',
  'day_admitted' => '2004-02-15',
  'age' => 14 })
animal3.save

animal4 = Animal.new({
  'name' => 'Mr Ekkles',
  'type' => 'Dog',
  'breed' => 'Pug',
  'adoption_status' => 'Not Adoptable',
  'day_admitted' => '2015-02-15',
  'age' => 5 })
animal4.save

owner1 = Owner.new({
  'name' => 'Johnny Teaspoons',
  'address' => '44 Wire Place, Edinburgh',
  'pet_id' => animal1.id })
owner1.save

owner2 = Owner.new({
  'name' => 'Mr David Dickinson',
  'address' => '1 Bronzed Place, Shropshire',
  'pet_id' => animal2.id })
owner2.save

binding.pry
nil
