require './book'
require './teacher'
require './student'
require './rental'

class App
  def initialize
    @list_books = []
    @list_people = []
    @list_rentals = []
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

  def list_people
    if @list_people.empty?
      puts 'Please add a person.'
    else
      @list_people.each do |n|
        puts "[#{n.class}] Name: #{n.name}, ID: #{n.id}, Age: #{n.age}"
      end
    end
  end

  def create_person
    print 'Do you want ot create a student(1) or a teacher(2)?: '
    user_input = gets.chomp.to_i
    case user_input
    when 1..2
      print 'Age: '
      input_age = gets.chomp.to_i
      print 'Name: '
      input_name = gets.chomp
      if user_input == 1
        # print 'Classroom: '
        # classroom = gets.chomp
        print 'Has parent permission?[Y/N]: '
        input_permission = gets.chomp
        student = Student.new(input_age, input_name, parent_permission: input_permission)
        @list_people.push(student)
      else
        print 'Specialization: '
        input_specialization = gets.chomp
        teacher = Teacher.new(input_specialization, input_age, input_name)
        @list_people.push(teacher)
      end
      puts 'Person created successfully.'
    else
      puts 'Answer not valid.'
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

  def create_rental
    if @list_books.empty? || @list_people.empty?
      puts 'Can\'t create rental, first create people and create a book'
    else
      puts 'Select a book from the following list by number'
      @list_books.each_with_index do |n, index|
        puts "#{index}) Title: \"#{n.title}\", Author: #{n.author}"
      end
      index_book = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      @list_people.each_with_index do |n, index|
        puts "#{index}) [#{n.class}] Name: #{n.name}, ID: #{n.id}, Age: #{n.age}"
      end
      index_person = gets.chomp.to_i
      print 'Date: '
      input_date = gets.chomp
      rental = Rental.new(input_date, @list_people[index_person], @list_books[index_book])
      @list_rentals.push(rental)
    end
  end

  def list_rental_by_id
    if @list_rentals.empty?
      puts 'Please add a book.'
    else
      print 'ID of person: '
      id = gets.chomp.to_i
      puts 'Rentals: '
      @list_rentals.each do |n|
        if n.person.id == id
          puts "Date: #{n.date}, Book: \"#{n.book.title}\" by #{n.book.author} "
        else
          puts 'No rentals matched that id'
        end
      end
    end
  end
end
