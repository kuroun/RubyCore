class Pokemon
  #class method: belong to class
  def self.fight
    p 'fight'
  end
  #instance method: can be used by all objects of class pokemon
  def walk
    p 'walk'
  end
end

x = Pokemon.new
y = Pokemon.new

#signleton method
# this fly method can be used by only object x!
def x.fly
  p 'fly'
end

x.walk
y.walk
#x.fight #error occur fight belong to class pokemon
Pokemon.fight
#y.fly # error occur, fly can be called by only x
x.fly
