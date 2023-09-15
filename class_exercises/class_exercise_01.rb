# John Rexpearl Tumlos
# Class Exercise 01
# Class for Book Inventory:
# Create a Ruby class called Book to represent books in a library inventory system. Each book should have attributes like title, author, isbn, and available_copies. Implement methods to check out and return books. Make sure the available copies are updated accordingly.

class Book
  attr_accessor :title, :author, :isbn, :available_copies
  def initialize(title, author, isbn, available_copies)
    @title = title
    @author = author
    @isbn = isbn
    @available_copies = available_copies
  end

  def details
    print "Title: #{@title} \nAuthor: #{@author} \nISBN:#{@isbn} \nAvailable copies: #{@available_copies}"
  end

  def check_out(borrow)
    if @available_copies >= borrow
      @available_copies -= borrow
      print "You have successfully borrowed #{borrow} copies."
    else
      print "Sorry. We don't have enough copies."
    end
  end

  def return_book(copies)
    @available_copies += copies
    print "You have successfully returned #{copies} copies."
  end

end

book_1 = Book.new("ABNKKBSNPLAKo?!", "Bob Ong", "1231241412", 5)
puts book_1.details
puts book_1.check_out(3)
puts book_1.details
puts book_1.check_out(3)
puts book_1.return_book(4)
puts book_1.details