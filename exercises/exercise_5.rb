require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# total stores revenue
puts Store.sum(:annual_revenue)

# average store revenue

puts Store.average(:annual_revenue)

#stores who have more than 1 mil in rev 

puts Store.where("annual_revenue > ?", 1000000).count
