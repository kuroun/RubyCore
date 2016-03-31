def skip_animals(animals, skip)
  # Your code here
    arr = []
    animals.each_with_index do |v,i|
        if(i >= skip)
            arr.push("#{i}:#{v}")
        end
    end
    arr
end
puts skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2).inspect