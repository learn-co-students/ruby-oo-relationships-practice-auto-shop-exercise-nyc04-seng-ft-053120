class Car

  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self 
  end

  def self.classifications
    self.all.map { |car| car.classification }
  end

  def self.find_mechanics(classification)
    Mechanic.all.select { |mechanic| mechanic.specialty == classification }
  end

  def self.all 
    @@all
  end

end
