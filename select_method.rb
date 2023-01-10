require_relative './app'

class SelectMethod
  def initialize
    @app = App.new
    @menu_option = {
      1 => 'list_books',
      2 => 'list_people',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_rental_by_id'
    }
  end

  def assign_method(input)
    case input
    when 1..6
      @app.send(@menu_option[input])
    end
  end
end
