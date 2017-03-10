class Cal
  attr_accessor :basic, :man_power, :product

  def initialize(basic, man_power, product)
    @basic = basic
    @man_power = man_power
    @product = product
  end

  def cal_estimate
    total = 0
    @product.each do |item, i|
      basic = @basic[i]
      total += item.job * basic
    end
    return total
  end


  def cal_markup
    total_markup = 0
    @product.each do |item, i|
      man_power = @man_power[i]
      total_markup += item.get_quote * man_power
    end
    retunr total_markup
  end
end
