# print first N palindromic prime numbers.
require 'prime'
pal_prime = ->(n){
    Prime.lazy.select{|x| x.to_s == x.to_s.reverse}.first(n)
    }
p pal_prime.(gets.to_i)    