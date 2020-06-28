require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Timmy")
co2 = CarOwner.new("Billy")
co3 = CarOwner.new("Matt")

c1 = co1.buy_car("Toyota", "Camry", "clunker")
c2 = co1.buy_car("Lamborghini", "Aventador", "exotic")
c3 = co2.buy_car("Ford", "Model T", "antique")
c4 = co2.buy_car("Cadillac", "V-16", "antique")
c5 = co3.buy_car("Mitsubishi", "Lancer", "exotic")

m1 = Mechanic.new("Paul", "clunker")
m2 = Mechanic.new("Johnston", "antique")
m3 = Mechanic.new("Smith", "exotic")

m1.work(c1)
m3.work(c2)
m2.work(c3)
m2.work(c4)
m3.work(c5)

binding.pry
