require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Car.new("Ferrari", "458", "exotic")
c2 = Car.new("Toyota", "Splinter", "antique")
c3 = Car.new("Volkswagen", "Beetle", "clunker")

co1 = CarOwner.new("Mark")
co2 = CarOwner.new("Jane")

m1 = Mechanic.new("Hamil", "exotic", c1, co1)

binding.pry
