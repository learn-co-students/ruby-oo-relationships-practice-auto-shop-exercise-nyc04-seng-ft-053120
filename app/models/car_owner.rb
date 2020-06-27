class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def mechanics
    Mechanic.all.select { |mechanic| mechanic.car_owner }
  end

  def cars
    self.mechanics.map { |mechanic| mechanic.car }
  end

  def cars_total
    self.cars.length
  end

  def self.average_number_of_cars
    total_cars = self.all.reduce(0) { |sum, car_owner| sum += car_owner.cars_total }
    total_cars.fdiv(self.all.length)
  end

  def self.all 
    @@all
  end

end
