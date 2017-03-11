class Rate

  def initialize(price)
    @quote = 0
    @total_quote = 0
    @type = 0
    @num_worker = 0
    @price = 0
  end

  def markups
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
  end

  def worker_rate
    (1.25 * @num_worker)
  end

  def total_quote
    @total_quote = (@quote + worker_rate)
  end

  def report
    "#{@quote} for #{@type} and #{@num_worker} person to work the job, total quote comes to: #{@total_quote}"
  end

  cheese = Rate.new("blue cheese")
  cheese.price
  cheese.markups
  cheese.quote
  cheese.report

end
