require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, apparel: "women's")
Store.create(name: "Whistler", annual_revenue: 1900000, apparel: "men's")
Store.create(name: "Yaletown", annual_revenue: 430000, apparel: "men's and women's")

@mens_stores = Store.where(apparel: "men's")

puts "Men's Apparel Stores"
@mens_stores.each { |store| puts "Name: #{store.name} / Annual Revenue: #{store.annual_revenue}" }

@womens_stores = Store.where("annual_revenue < 1000000").where(apparel: "men's")

puts "Women's Apparel Stores"
@womens_stores.each { |store| puts "Name: #{store.name} / Annual Revenue: #{store.annual_revenue}" }