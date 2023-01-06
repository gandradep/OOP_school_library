require './book'


class App
  def initialize
     @list_books = []
  end

  def list_books
    if @list_books.empty?
      puts 'Please add a book.'
    else
      @list_books.each do |n|
        puts "Title: \"#{n.title}\", Author: #{n.author}"
      end
    end
  end

  def create_book
    print 'Title: '
    input_title = gets.chomp
    print 'Author: '
    input_author = gets.chomp
    puts 'Book created successfully'
    book = Book.new(input_title, input_author)
    @list_books.push(book)
  end
end
