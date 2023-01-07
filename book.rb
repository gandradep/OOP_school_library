# Book many-to-many relationship with Person
class Book
  attr_reader :rentals, :books
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end
