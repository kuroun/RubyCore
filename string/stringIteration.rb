# Your code here
def count_multibyte_char(s)
    count = 0
    s.each_char do |x|
        temp = 0
        x.each_byte do |y|
            temp += 1
        end
        count += 1 if(temp>1)
    end
    count
end
puts count_multibyte_char("¥1000")
