#!/usr/bin/ruby
#This script is the math behind how xD6's name was created (Haxxed and Nexus were the names used)

require 'active_support/core_ext/integer/inflections'

print "Enter number of people: "
count = gets.to_i
names = 0;

for i in 1..count
  print "Enter the #{i.ordinalize} person's name: "
  names += gets.downcase.getbyte(0)
end

puts "\n=============\n" + "     " + "x" + names.to_s(16).upcase + "\n=============";
