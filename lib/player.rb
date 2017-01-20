class Player

attr_reader :name, :hit_points

SCORE = 30

  def initialize(name, hit_points = SCORE)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @hit_points-=10
  end

end
