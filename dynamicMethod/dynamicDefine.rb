class Monk
  # put your code here
  ["life","the_universe","everything"].each do |action|
    define_method("meditate_on_#{action}") do |default = {}|
      "I know the meaning of #{action.gsub("_"," ")}"
    end
  end
end
life = Monk.new.meditate_on_life
universe = Monk.new.meditate_on_the_universe
everything = Monk.new.meditate_on_everything
puts life
puts universe
puts everything