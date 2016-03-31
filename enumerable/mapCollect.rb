def rot13(secret_messages)
  str1 = "abcdefghijklmABCDEFGHIJKLM"
  str2 = "nopqrstuvwxyzNOPQRSTUVWXYZ"
  hash1 = {}
  hash2 = {}
  str1.split("").each_with_index.map{|v,k| hash1[v] = k}
  str2.split("").each_with_index.map{|v,k| hash2[v] = k}
  arr = []
  secret_messages.split("").each do |v|
   if(hash1.key?v)
     #return key from known value of hash
     arr.push(hash2.key(hash1[v])) 
   elsif(hash2.key?v)
     arr.push(hash1.key(hash2[v]))
   else
     arr.push(v)
   end
  end
  arr.join("")
end

# def rot13(secret_messages)
    # secret_messages.map { |c| c.tr("a-z", "n-za-m") }
# end
puts rot13("Gb trg gb gur bgure fvqr!").inspect

