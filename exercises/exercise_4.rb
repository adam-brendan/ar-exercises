require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true).where(womens_apparel: false)

puts "Men's Apparel Stores"
@mens_stores.each { |store| puts "Name: #{store.name} / Annual Revenue: #{store.annual_revenue}" }

@womens_stores = Store.where("annual_revenue < 1000000").where(mens_apparel: false).where(womens_apparel: false)

puts "Women's Apparel Stores"
@womens_stores.each { |store| puts "Name: #{store.name} / Annual Revenue: #{store.annual_revenue}" }