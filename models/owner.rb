require_relative('../db/sql_runner.rb')
require_relative('./animal.rb')

class Owner

  attr_accessor :name, :address
  attr_reader :id,

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @address = options['address']
    @pet_id = options['pet_id']
  end

  def save()
    sql = ""
  end 






end
