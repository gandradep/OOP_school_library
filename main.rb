require './select_method'
# this class runs the user interface
class Main
  def initialize
    @select_method = SelectMethod.new
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
    if user_input == 7
      @select_method.save_json
      puts 'Thank you for using this app!'
    else
      @select_method.assign_method(user_input)
      main
    end
  end
end

start = Main.new
start.main
