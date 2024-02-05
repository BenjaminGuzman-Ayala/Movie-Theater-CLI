class Movie
  attr_accessor :name, :director

  def initialize(name,director)
    @name = name
    @director = director
  end
  
  def to_s
    "#{@name} directed by #{@director}"

  end


end
