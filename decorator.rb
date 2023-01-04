require './nameable'
# class Decorator, which will be the parent of any modification to name.
class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
