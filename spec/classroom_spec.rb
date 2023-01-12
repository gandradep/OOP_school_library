require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'Test Classroom class and its methods' do
    before(:each) do
      @student = Student.new(18, 'Bob', true)
      @classroom = Classroom.new('Music')
    end
    it 'should be an instance of classroom' do
      expect(@classroom).to be_instance_of Classroom
    end
    it 'should be able to access add_student method' do
      @classroom.add_student(@student)
      expect(@classroom.students[0].name).to eq 'Bob'
    end
  end
end
