# Rental helps with  many-to-many relationship between Person and Book
class Rental
  attr_accessor :date

  def initialize(date)
    @date = date
  end
end
