require_relative('../db/sql_runner.rb')


class Owner

  attr_accessor :name, :address
  attr_reader :id, :pet_id

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

  def self.find(id)
    sql = "SELECT * FROM owners WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)
    return Owner.new(result.first)
  end

  def update()
      sql = "UPDATE owners SET(name, address, pet_id) = ($1, $2, $3)
      WHERE id = $4;"
      values = [@name, @address, @pet_id, @id]
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








end
