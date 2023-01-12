require_relative '../rental'

describe Rental do
  context 'Test Rental class and its methods' do
    before(:each) do
      person = {
        'class' => 'Teacher',
        'id' => 23,
        'age' => 30,
        'name' => 'oswald',
        'specialization' => 'Mech Eng',
        'rentals' => []
      }

      book = {
        'title' => 'Games of throne',
        'Author' => 'Eburian',
        'rentals' => []
      }
      @rental = Rental.new('12/01/2023', person, book)
    end
    it 'should say should be able to acces specialization in person object' do
      expect(@rental.person['specialization']).to eq 'Mech Eng'
    end
    it 'should be an instance of Rentals' do
      expect(@rental).to be_instance_of Rental
    end
    it 'should not be [] when accessing rental in book object' do
      expect(@rental.book['rentals']).not_to eql []
    end
    it 'should not be [] when accessing rental in person object' do
      expect(@rental.person['rentals']).not_to eql []
    end
    it 'should say should be able to acces book title in book object' do
      expect(@rental.book['title']).to eq 'Games of throne'
    end
  end
end
