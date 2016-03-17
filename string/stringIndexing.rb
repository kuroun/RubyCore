# Your code here
def serial_average(s)
    serial = s[0,3]
    x = s[4,5].to_f
    y = s[10,5].to_f
    a = (x + y)/2
    result = serial + "-#{a.round(2)}"
end
puts serial_average '001-12.43-56.78'