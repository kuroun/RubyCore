puts self
class S
  #below is class method  
  def S.x  
    puts "Class method of class S"  
    puts self  
  end  
end  
S.x 
module Ref
  def reflect
    self
  end
end
class Angel
  #serve as class method
  extend Ref
  #serve as instance method
  include Ref
end

#calling class method
puts Angel.reflect
#calling instance method
a = Angel.new
puts a.reflect