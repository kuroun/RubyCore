module Printable
  def print
    puts 'print of printable'
  end
  def prepare_cover
    puts 'prepare cover'
  end
end
module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end
  def format_for_screen
    puts 'format for screen'
  end
  def print
    puts 'print of document'
  end
end
class Book
  #solution: change hirachy include here
  include Document
  include Printable
end
b = Book.new
b.print_to_screen #what if we want to print of document instead?