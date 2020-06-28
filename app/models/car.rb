class Car

  attr_reader :make, :model, :owner
  attr_accessor :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic = nil)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map do |car|
      car.classification
    end
    .uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select do |mechanic|
      mechanic.specialty == classification
    end
  end

end
