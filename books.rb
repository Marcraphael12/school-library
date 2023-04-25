require './book'
require './data'
require 'json'

class Books
  #read and write
  attr_accessor :books
  
  def initialize
    # @books = []
    @books = read_books
  end
  
  def booklist
    #case there's no book
    puts 'You don\'t have any book yet! Go to the dashboard and add one please.' if @books.empty?
    @books.each { |book| puts "Title📖: #{book.title}, Author👨‍💼: #{book.author}" }
  end

  #create a new book
  def create_book
    print 'Enter the Book title please: '
    title = gets.chomp

    print'Nice 🙂'
    print 'Now enter the Author name: '
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)
    write_books(@books)

    puts 'Nice, a new book will be added to your book list. Now go to the dashboad to see it🙂'
  end
end
