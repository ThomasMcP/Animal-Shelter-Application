require_relative('../db/sql_runner.rb')


class Owner

  attr_accessor :name, :address
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @address = options['address']
    @pet_id = options['pet_id']
  end

  def save()
    sql = "INSERT INTO owners (name, address, pet_id) VALUES ($1, $2, $3) RETURNING id;"
    values = [@name, @address, @pet_id]
    result = SqlRunner.run(sql, values)
    id = result.first['id']
    @id = id.to_i
  end

  def self.all()
    sql = "SELECT * FROM owners"
    values = []
    result = SqlRunner.run(sql, values)
    return result.map { |owner| Owner.new(owner)}
  end






end
