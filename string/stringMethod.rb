# Enter your code here
def mask_article s,a
    a_mod = a.map {|x| x = strike(x)}
    a.each_with_index do |v,i|
        if(s.include?(v)) 
          s[v] = a_mod[i]
        end
    end
    s
end
    
def strike s
    s = "<strike>"+s+"</strike>"
end
puts make_article "Hello World! This is crap!", ["crap"]