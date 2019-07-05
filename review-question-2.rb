# Finish the implementation of the Car class so it has the functionality described below

class Car
  @@drive = "VROOOOOOOOOOOOM!"
  @@all = []
  attr_accessor :make, :model
  def initialize(make=nil, model=nil)
    @make = make
    @model = model
    @@all << self
  end
  def self.all
    @@all
  end

  def self.drive
    @@drive
  end
end

volvo_lightning = Car.new(make= "Volvo", model= "Lightning")
yugo = Car.new("Zastava", "Yugo")
lada = Car.new("AvtoVAZ", "Lada")

p volvo_lightning.make
# => "Volvo"
p volvo_lightning.model
# => "Lightning"

p Car.drive
# => "VROOOOOOOOOOOOM!"

p Car.all
# => [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]

# BONUS:

volvo_lightning = Car.new(make= "Volvo", model= "Lightning")

p volvo_lightning.make
# => "Volvo"
p volvo_lightning.model
# => "Lightning"
