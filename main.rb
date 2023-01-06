require './app'
# this class runs the user interface
class Main
  def initialize
    @app = App.new
    puts 'Welcome to School Library App!'
    @menu = <<~TEXT

      Please choose an option by entering a number:
      1 - List all books
      2 - List all people
      3 - Create a person
      4 - Create a book
      5 - Create a rental
      6 - List all rentals for a given person id
      7 - Exit
    TEXT
  end

  def main
    puts @menu
    user_input = gets.chomp.to_i
    menu_option = {
      1 => 'list_books',
      2 => 'list_people',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_rental_by_id'
    }
    case user_input
    when 1..6
      @app.send(menu_option[user_input])
      main
    when 7
      puts 'Thank you for using this app!'
    end
  end
end

start = Main.new
start.main
