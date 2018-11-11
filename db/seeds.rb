require_relative('../models/animal.rb')


animal1 = Animal.new({
  'name' => 'David Tennant',
  'adoption_status' => 'Adoptable',
  'day_admitted' => '2018-08-14 12:32:36',
  'age' => 2 })

animal1.save
