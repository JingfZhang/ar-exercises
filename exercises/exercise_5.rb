require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "TOTAL REVENUE: #{@total_revenue}"

@number_of_stores = Store.count
@average_revenue = @total_revenue / @number_of_stores
puts "AVERAGE REVENUE: #{@average_revenue}"

@store_high_revenue = Store.where("annual_revenue > '1000000'")
puts "NUMBER OF STORE THAT MAKES MORE THAT $1 MILLION: #{@store_high_revenue.count}"