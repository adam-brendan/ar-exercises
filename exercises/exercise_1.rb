require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

ActiveRecord::Schema.define do
    drop_table :stores if ActiveRecord::Base.connection.table_exists?(:stores)
  
    create_table :stores do |t|
        t.string  :name
        t.integer  :annual_revenue
        t.string  :apparel
    end
end

Store.create(name: "Burnaby", annual_revenue: 300000, apparel: "men's and women's")
Store.create(name: "Richmond", annual_revenue: 1260000, apparel: "women's")
Store.create(name: "Gastown", annual_revenue: 190000, apparel: "men's")

stores = Store.count
puts stores