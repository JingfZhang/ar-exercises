require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Enter a store name: "
store_name_input = gets.chomp
print "Enter the annual revenue: "
store_revenue_input = gets.chomp

@newStore = Store.create(name: store_name_input, annual_revenue: store_revenue_input)
@newStore.errors.full_messages.each do |error|
  puts error
end

# newEmployee = Employee.create(first_name: store_name_input)
# newEmployee.errors.full_messages.each do |error|
#   puts error
# end