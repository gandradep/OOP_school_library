require_relative '../book'

describe Book do
  context 'Test book initialize right' do
    before(:each) do
      @book = Book.new('title', 'author')
    end
    it 'should say should be able to acces title and author' do
      expect(@book.title).to eq 'title'
    end
    it 'should say should be able to acces title and author' do
      expect(@book.author).to eq 'author'
    end
  end
end
