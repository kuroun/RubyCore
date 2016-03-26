def full_name(first,*mid, last)
    #init = " "
    first += " " 
    mid.reduce(first){|init = " ", x| init + x + " "} + last
end
puts full_name("kuroun","Sophat","Montha", "seung")
