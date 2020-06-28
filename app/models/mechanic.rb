class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def work(car)
    car.mechanic = self
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    cars.map do |car|
      car.owner
    end
  end

  def car_owners_names
    car_owners.map do |car_owner|
      car_owner.name
    end
  end

end
