require_relative('../db/sql_runner.rb')
require_relative('./owner.rb')

class Animal

  attr_accessor :name, :adoption_status, :day_admitted
  attr_reader :id, :owner_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @adoption_status = options['adoption_status']
    @day_admitted = options['day_admitted']
    @age = options['age']
  end
end
