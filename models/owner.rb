require_relative('../db/sql_runner.rb')


class Owner

  attr_accessor :name, :address, :pets
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @address = options['address']
    @pets = options['pets']
  end

  def save()
    sql = "INSERT INTO owners (name, address, pets) VALUES ($1, $2, $3) RETURNING id;"
    values = [@name, @address, @pets]
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

  def self.find(id)
    sql = "SELECT * FROM owners WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)
    return Owner.new(result.first)
  end

  def update()
      sql = "UPDATE owners SET(name, address, pets) = ($1, $2, $3)
      WHERE id = $4;"
      values = [@name, @address, @pets, @id]
      SqlRunner.run(sql, values)
  end

  def self.destroy(id)
    sql = "DELETE FROM owners WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM owners;"
    SqlRunner.run(sql)
  end

  def pets_by_owner()
    sql = "SELECT animals.* FROM animals WHERE owner_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { | animal | Animal.new(animal)}
  end








end
