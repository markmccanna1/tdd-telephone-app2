class Pizza
  attr_accessor :name, :description, :bake_time

  def initialize(name, description)
    @name = name
    @description = description
    @bake_time = 0

  end
end
