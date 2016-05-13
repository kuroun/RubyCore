arr = [1,2,3]
p arr*3
money = 9.5
p "%.2f" % money 

does = is = { true => 'Yes', false => 'No' }
p does[10 == 50]                       # => "No"
p is[10 > 5] 

#quick mass assignment
a1, b2, c3, d4 = 1, 2, 3, 4

#rescue to rescue
h = { :age => 10 }
 #h[:name].downcase                         # ERROR
 h[:name].downcase rescue "No name"        # => "No name"

#|| and or, && and and
a = false || true
b = false or true # or has lower precedence than = 
p a,b
c = true && false
d = true and false # and has lower precedence than =
p c,d

# set every value of hash to default value is an array with one element
hash = Hash.new([1])
hash[:one] = hash[:one]
p hash[:one]
hash[:two] = hash[:two] << 2
p hash[:two]
hash[:three]= hash[:three] << 3
p hash[:three]
p hash
# thus, every update to hash will affect the default value

