require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Emily", last_name: "Lim", hourly_rate: 150)

@store1.employees.create(first_name: "Jacob", last_name: "Mars", hourly_rate: 100)

@store2.employees.create(first_name: "Alvin", last_name: "Ngo", hourly_rate: 100)

@store2.employees.create(first_name: "Rick", last_name: "Sanchez", hourly_rate: 100)