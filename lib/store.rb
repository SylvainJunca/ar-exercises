class Store < ActiveRecord::Base
  has_many :employees
   validates :name, length: {minimum: 3} #, "A store's name should contain more than 3 characters"
   validates :annual_revenue, numericality: {only_integer: true, greater_than: 0} 
  #  validates :men_or_women
end


# def men_or_women
#   if mens_apparel == false && womens_apparel == false
#      errors.add(:mens_apparel, "a store should sell at least men or women apparel")
#      errors.add(:womens_apparel, "a store should sell at least men or women apparel")
#   end
# end

# Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that must be 0 or more
#   * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method]