require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@stores_revenue = Stores.sum(:annual_revenue)
@number_of_stores = Stores.count
@number_of_stores_over_million = Stores.where("annual_revenue > 1000000").count

puts "Total revenue of all stores : $#{@stores_revenue}"
puts "Average is $#{@stores_revenue / @number_of_stores}"
puts "Number of store with more than $1,000,000.00 annual revenue : #{@number_of_stores_over_million}"


### Exercise 5: Calculations

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.