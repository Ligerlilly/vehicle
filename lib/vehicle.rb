class Vehicle
  attr_reader :make, :model, :year
  @@vehicle_array = []
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def save
    @@vehicle_array.push(self)
  end

  def self.all
    @@vehicle_array
  end

  def self.clear
    @@vehicle_array = []
  end

end
