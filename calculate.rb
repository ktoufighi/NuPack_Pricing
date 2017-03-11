class Calculate
  attr_accessor :basic, :extras, :product

  def initialize(basic, extras, product)
    @basic = basic
    @extras = extras
    @product = product
  end

  def cal_estimate
    total = 0
    @product.each do |item|
      total += item.rate * basic
    end
    return total
  end

  def cal_markup
    total_markup = 0
    @product.each do |item|
      total_markup += item.get_quote * extras
    end
    retunr total_markup
  end
end
