#!/usr/bin/env ruby
#This script is the math behind how xD6's name was created (Haxxed and Nexus were the names used)

require 'active_support/core_ext/integer/inflections'

print "Enter number of people: "
count = gets.to_i
names = 0;

for i in 1..count
  print "Enter the #{i.ordinalize} person's name: "
  names += gets.downcase.getbyte(0)
end

group_name = "x#{names.to_s(16).upcase}"

puts "=" * (group_name.length + 2)
puts " #{group_name} "
puts "=" * (group_name.length + 2)