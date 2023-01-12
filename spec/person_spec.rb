require_relative '../person'

describe Person do
  context 'Test Person class and its methods' do
    before(:each) do
    @person = Person.new(25, 'gustavo')
    end
    it 'should be an instance of Person' do
      expect(@person).to be_an_instance_of Person
    end
    it 'should have a name' do
      expect(@person.name).to eq 'gustavo'
    end
    it 'should have an age' do
      expect(@person.age).to eq 25
    end
    it 'it should say true for method can_use_services?' do
      expect(@person.can_use_services?).to eq true
    end
  end
end
