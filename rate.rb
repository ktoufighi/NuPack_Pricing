class Rate

    def initialize(type, price, num_worker)

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
end

# Input
  food = Rate.new('food', 30, 3)
  medication = Rate.new('medication', 12.45, 1)
  basic = Rate.new('basic', 20.99, 1)

# Final number
puts "Output1: Snacks $#{food.total_quote}"
puts "Output2: Tylenol $#{medication.total_quote}"
puts "Output3: Lord of the Rings $#{basic.total_quote}"
