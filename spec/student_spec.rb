require_relative '../student'

describe Student do
  context 'Test Student class and its methods' do
    before(:each) do
      @student = Student.new(18, 'Bob', 'math')
    end
    it 'should say should be able to acces age' do
      expect(@student.age).to eq 18
    end
    it 'should say should be able to acces name' do
      expect(@student.name).to eq 'Bob'
    end
    it 'should say should be able to acces method play_hooky' do
      expect(@student.play_hooky).to eq '¯\(ツ)/¯'
    end
    it 'should be instance of student' do
      expect(@student).to be_instance_of Student
    end
  end
end
