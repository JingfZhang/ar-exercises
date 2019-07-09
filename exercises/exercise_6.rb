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
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 40)
@store1.employees.create(first_name: "Jason", last_name: "Virani", hourly_rate: 66)
@store1.employees.create(first_name: "Ken", last_name: "Lee", hourly_rate: 53)

@store2.employees.create(first_name: "Henry", last_name: "Li", hourly_rate: 66)
@store2.employees.create(first_name: "Tim", last_name: "Tam", hourly_rate: 47)
@store2.employees.create(first_name: "Genos", last_name: "Robot", hourly_rate: 13)
@store2.employees.create(first_name: "Saitama", last_name: "Onepunch", hourly_rate: 199)
