class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def buy_car(make, model, classification)
    Car.new(make, model, classification, self)
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

  def self.total_cars_owned
    self.all.sum do |car_owner|
      car_owner.cars.count
    end
  end

  def self.average_number_of_cars
    self.total_cars_owned/Car.all.count
  end

end
