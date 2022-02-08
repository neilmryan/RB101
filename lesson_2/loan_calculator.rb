require 'pry'

puts "Welcome to loan calculator!"
puts "Enter loan amount:"
l_amount = gets().chomp()
puts "Enter loan APR %:"
l_apr = gets().chomp()
puts "Enter loan duration in years:"
l_dur_years = gets().chomp()

def find_month_int_rate(l_apr)
  decimal_apr = l_apr.to_f / 100
  decimal_apr / 12
end

def find_l_dur_months(l_dur_years)
  l_dur_years.to_i * 12
end

def find_month_payment(l_amount, month_int_rate, l_dur_months)
  # binding.pry
  l_amount.to_i * (month_int_rate / (1 - (1 + month_int_rate)**(-l_dur_months)))
end

month_int_rate = find_month_int_rate(l_apr)
l_dur_months = find_l_dur_months(l_dur_years)
month_payment = find_month_payment(l_amount, month_int_rate, l_dur_months)

puts "Your monthly payment is #{month_payment}"
