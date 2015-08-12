class Vehicle
  attr_reader :make, :model, :year, :id
  @@vehicle_array = []
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @id = @@vehicle_array.length + 1
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

  def age
    current_year = Time.new.year
    age = current_year - @year

  end

  def self.find(id)
    found_car = nil
    @@vehicle_array.each do |car|
      if car.id.eql?(id)
        found_car = car
      end
    end
    found_car
  end




end
