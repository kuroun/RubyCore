#!/bin/ruby
S = gets.strip
begin
    puts Integer(S)
rescue Exception
    puts "Bad String"
end