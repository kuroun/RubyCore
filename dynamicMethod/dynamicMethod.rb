class A
  #private
  def m
    puts "hello"
  end  
end
a = A.new
#using call keyword, can call private method
method = a.method(:m)
method.call

#using send keyword, can call private method, faster than call
a.send(:m)

#using eval, cannot call private method, it is the slowest techniques
eval "a.m"



