require_relative 'calculate'
require_relative 'rate'


# item list 1
medication = Drugs.new['tylenol']
medication.worker(1)
medication.cal_estimate
medication.cal_markup
medication.report

repack1 = []
repack1_item << medication

# cart 1
man_power = [3]

# receipt 1
puts 'Here is your repacking estimate.'
puts '+++++++++++++++++++++++++++++++++++++++++++++'
estimate1 = Rate.new(repack1, repack1_item)
estimate1.product.each do |item|
  puts item.item
  puts item.rate
end
puts "$#{repack1}, #{man_power} people, #{product}"
