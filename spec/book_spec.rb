require './book'
require './student'

describe Book do
  before :each do
    @book = Book.new 'Title', 'Author'
  end

  describe '#new book' do
    it 'takes two parameters and returns a Book object' do
      @book.should be_an_instance_of Book
    end
  end

  describe '#The book title' do
    it 'returns the correct title' do
      @book.title.should eql 'Title'
    end
  end

  describe '#The book author' do
    it 'returns the correct author' do
      @book.author.should eql 'Author'
    end
  end

  it 'Needs book rentals to be empty' do
    expect(@book.rentals).to eql []
  end

  it 'add a rental' do
    #First create students
    @student1 = Student.new('23', 'Marc')
    @student2 = Student.new('20', 'Rita')

    #Make sure that rentals is empty
    expect(@book.rentals.length).to eql(0)

    #Add a new rental
    @book.add_rental('2023-04-26', @student1)
    @book.add_rental('2023-04-26', @student1)

    #Make sure the new rental has been added
    expect(@book.rentals.length).to eql(2)
  end
end
