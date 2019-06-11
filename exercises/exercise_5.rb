require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum("annual_revenue")
puts "Total annual revenue for all stores: $#{@total_revenue}"

@average_revenue = @total_revenue / Store.count
puts "Average annual revenue for all stores: $#{@average_revenue}"

@big_stores = Store.where("annual_revenue >= 1000000").count
puts "Number of big stores: #{@big_stores}"