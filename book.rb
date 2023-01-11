# Book many-to-many relationship with Person
class Book
  attr_reader :books
  attr_accessor :rentals, :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end
