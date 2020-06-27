class Mechanic

  attr_reader :name, :specialty, :car, :car_owner

  @@all = []

  def initialize(name, specialty, car, car_owner)
    @name = name
    @specialty = specialty
    @car = car 
    @car_owner = car_owner
    @@all << self 
  end

  def mechanic_instances
    Mechanic.all.select { |mechanic| mechanic == self }
  end

  def cars
    self.mechanic_instances.map { |mechanic| mechanic.car }
  end

  def car_owners
    self.mechanic_instances.map { |mechanic| mechanic.car_owner }
  end 

  def car_owners_names
    self.car_owners.map { |car_owner| car_owner.name }
  end

  def self.all 
    @@all
  end 

end
