require_relative '../decorator'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'
require_relative '../person'

describe Decorator do
  context 'Test Decorator and its subClasses' do
    before(:each) do
      pers = Person.new(22, 'maximilianus')
      @decorator = Decorator.new(pers)
      @capitalize = CapitalizeDecorator.new(pers)
      @trimm = TrimmerDecorator.new(pers)
    end
    it 'should be an instance of Decorartor' do
      expect(@decorator).to be_instance_of Decorator
    end
    it 'should be an instance of classroom' do
      expect(@capitalize.correct_name).to eq 'Maximilianus'
    end
    it 'should be an instance of classroom' do
      expect(@trimm.correct_name).to eq 'maximilian'
    end
  end
end
