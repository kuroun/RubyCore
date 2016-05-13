class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    #we can avoid bug by limit the number of ghost methods
    super unless %w[Bob Frank Bill Kuroun].include? person
    number = 0 #without this line will cause the method_missing in the stack overflow loop 
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"
  end
end
number_of = Roulette.new
puts number_of.bob
puts number_of.kuroun
#bob and kuroun called ghost methods