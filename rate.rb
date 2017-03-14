class Rate

    def initialize(name, type, price, num_worker)

    @name = name
    @type = type
    @price = price
    @num_worker = num_worker

  end

  def markups
    quote = 0

    if @type == "basic"
      quote = (@price * 0.05).round(2)

    elsif @type == "medication"
      quote = (@price * 0.12).round(2)

    elsif @type == "food"
      quote = (@price * 0.18).round(2)

    elsif @type == "electronics"
      quote = (@price * 0.07).round(2)

    else
      @type == "extempt"
      quote = (@price * 0)
    end

    quote
  end

  def worker_rate
    (1.25 * @num_worker)
  end

  def total_quote
    @price + markups + worker_rate
  end

  def product_description
    @name + total_quote.to_s
  end

end



# Input
  food = Rate.new('food', 'food', 30, 3)
  medication = Rate.new('medication', 'medication', 12.45, 1)
  basic = Rate.new('basic', 'basic', 20.99, 1)

# Final number
puts "Output1: Snacks $#{food.total_quote}"
puts "Output2: Tylenol $#{medication.total_quote}"
puts "Output3: Lord of the Rings $#{basic.total_quote}"


puts ""
puts "FIRST ITEM"
# input
steak = Rate.new("Steak and Cheese: $", 'food', 30, 2)
# output
puts steak.product_description
puts "Workers markup: $#{steak.worker_rate}"
puts "Product markup: $#{steak.markups}"

puts ""
puts "NEXT ITEM"
# input
book = Rate.new("Harry Potter: $", 'food', 14.99, 1)
# output
puts book.product_description
puts "Workers markup: $#{book.worker_rate}"
puts "Product markup: $#{book.markups}"
