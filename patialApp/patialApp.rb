multiply_function = -> (number) do
   -> (another_number) do
       number * another_number
   end
end

doubler = multiply_function.(2)
tripler = multiply_function.(3)

p multiply_function.(2).(4)
p multiply_function.(3).(4)

# puts doubler.(4)
# puts tripler.(4)