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
@store1.employees.create(first_name: "Adam", last_name: "Craveiro", hourly_rate: 60)
@store1.employees.create(first_name: "Jessica", last_name: "Caume", hourly_rate: 60)
@store1.employees.create(first_name: "Katarina", last_name: "Zlatanovic", hourly_rate: 60)
@store2.employees.create(first_name: "Lisa", last_name: "Craveiro", hourly_rate: 60)
@store2.employees.create(first_name: "Lendall", last_name: "D'Silva", hourly_rate: 60)
@store2.employees.create(first_name: "Justin", last_name: "Manoryk", hourly_rate: 60)
