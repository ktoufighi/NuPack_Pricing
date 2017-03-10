class Rate
  # attr_accessor :job, :worker, :exempted, :food, :drugs, :electronics

  def initialize(job, worker, exempted, food, drugs, electronics)
    @job = job
    @worker = worker
    @exempted = exempted
    @food = food
    @drugs = drugs
    @electronics = electronics
  end
end


class Flat < Rate
  def get_quote
    markup = (@job * 0.05).round(2)
    return markup
  end
end

class Worker < Rate
  def get_quote
    markup = (@job * 1.25).round(2)
    return markup
  end
end

class Drugs < Rate
  def get_quote
    markup = (@job * 0.125).round(2)
    return markup
  end
end

class Food < Rate
  def get_quote
    markup = (@job * 0.18).round(2)
    return markup
  end
end

class Electronics < Rate
  def get_quote
    markup = (@job * 0.07).round(2)
    return markup
  end
end

class Exempt < Rate
  def get_quote
    markup = @job * 0
    return markup
  end
end
