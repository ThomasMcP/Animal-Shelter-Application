require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('time')
require('pry-byebug')



animal1 = Animal.new({
  'name' => 'David Tennant',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2018-08-14',
  'age' => 2 })


animal1.save
