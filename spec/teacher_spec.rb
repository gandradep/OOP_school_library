require_relative '../teacher'

describe Teacher do
  context 'Test Teacher class and its methods' do
    before(:each) do
      @teacher = Teacher.new('Math', 30, 'Robert')
    end
    it 'should say should be able to acces specialization' do
      expect(@teacher.specialization).to eq 'Math'
    end
    it 'should be an instance of Teacher' do
      expect(@teacher).to be_instance_of Teacher
    end
    it 'should result in true when accessing use_services' do
      expect(@teacher.can_use_services?).not_to eql false
    end
  end
end
