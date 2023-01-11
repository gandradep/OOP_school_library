require_relative './app'
require 'json'

class SelectMethod
  def initialize
    @app = App.new
    @menu_option = {
      1 => 'show_books',
      2 => 'show_people',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_rental_by_id'
    }
  end

  def save_json
    File.write('books.json', JSON.pretty_generate(@app.list_books))
  end

  def assign_method(input)
    case input
    when 1..6
      @app.send(@menu_option[input])
    end
  end
end
