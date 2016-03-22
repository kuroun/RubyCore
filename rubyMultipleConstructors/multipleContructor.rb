class Good
  
  def initialize(*args)
    case args.size
    when 0
      puts "0 parameter"
    when 1
      puts "1 parameter"
    when 2
      puts "2 parameters"
    when 3
      puts "3 parameter"
    else
      puts "invalid contruct"
    end  
  end
end
a=1
b=2
c=3
g0 = Good.new
g1 = Good.new a
g2 = Good.new a,b
g3 = Good.new a,b,c 
g4 = Good.new a,b,c,a  
