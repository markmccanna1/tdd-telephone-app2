class Pizza
  attr_accessor :name, :description, :time_baked

  def initialize(name, description)
    @name = name
    @description = description
    @time_baked = 0

  end
end

class Topping
  attr_accessor :name, :required_bake_time, :time_baked

  def initialize(name, required_bake_time)
    @name = name
    @required_bake_time = required_bake_time
    @time_baked = 0
  end
end
