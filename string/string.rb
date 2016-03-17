puts 'Hello! Programmer. How\'s it going?'
puts "Hello! There is a tab \t here. Did you see?"
puts "My name is Circle, and I love Pi. Pi is equal to #{Math::PI}"
document = <<-HERE         # We begin with <<- followed by the ending delimiter HERE
This is a string literal.
It has two lines and abruptly ends with a newline...
HERE
puts document
str = "With ♥!"
puts str
puts str.encoding.name
puts str.size
puts str.bytesize