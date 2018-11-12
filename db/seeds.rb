require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('time')
require('pry-byebug')



animal1 = Animal.new({
  'name' => 'David Tennant',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2018-08-14',
  'age' => 2 })

animal2 = Animal.new({
  'name' => 'Christopher Eccelston',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2008-02-15',
  'age' => 10 })


animal1.save
animal2.save

Animal.all
binding.pry
nil
