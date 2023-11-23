# def calcTax(income)
#   taxRate1 = 0.1
#   taxRate2 = 0.2
#   taxRate3 = 0.3
#   taxRate4 = 0.4
#   taxRate5 = 0.5
#
#   if income > 1
#     puts "10%"
#     p "taxed - #{taxed1 = 10000 * taxRate1}"
#     p "remainder  - #{step1 = income - 10000}"
#   end
#   if income > 10001
#     puts
#     puts "20%"
#     p "taxed - #{taxed2 = 10000 * taxRate2}"
#     p "remainder  - #{step2 = income - 20000}"
#   end
#   if income > 20001
#     puts
#     puts "30%"
#     p "taxed - #{taxed3 = 30000 * taxRate3}"
#     p "remainder  - #{step3 = income - 50000}"
#   end
#   if income > 50001
#     puts
#     puts "40%"
#     p "taxed - #{taxed4 = 35000 * taxRate4}"
#     p "remainder  - #{step4 = 0}"
#   end
#   return "Tax Total: #{tax_total = taxed1 + taxed2 + taxed3 + taxed4}"
# end
#
# p calcTax(85000)

# def tax(income)
#   incomeCap = { tax_bracket_1: 0.1, tax_bracket_2: 0.2, tax_bracket_3: 0.3, tax_bracket_4: 0.4, tax_bracket_5: 0.5,  }
#   total = 0
#   incomeCap.each do |key, value|
#     p value
#     if income >= value
#       taxPercent = value
#       p taxPercent
#       sumToTaxFrom = income - value
#       total += (sumToTaxFrom * taxPercent)
#       income -= sumToTaxFrom
#     end
#     return total
#   end
# end
# p tax(85000)

MARGINAL_TAX_BRACKETS = [
  {amount_cap: 10_000, marginal_rate: Rational('0.00')},
  {amount_cap: 30_000, marginal_rate: Rational('0.10')},
  {amount_cap: 100_000, marginal_rate: Rational('0.25')},
  {amount_cap: nil, marginal_rate: Rational('0.40')}
]
def tax_for(marginal_tax_brackets, total_amount)
  amount_left_to_account_for = total_amount
  tax_so_far = 0

  marginal_tax_brackets.each do |current_bracket|
    amount_to_handle_in_this_bracket = begin
      bracket_cap = current_bracket[:amount_cap]
      if bracket_cap == nil || bracket_cap >= total_amount
        amount_left_to_account_for
      else
        amount_accounted_for_so_far = total_amount - amount_left_to_account_for
        bracket_cap - amount_accounted_for_so_far
      end
    end
    tax_added_by_this_bracket = amount_to_handle_in_this_bracket * current_bracket[:marginal_rate]

    amount_left_to_account_for -= amount_to_handle_in_this_bracket
    tax_so_far += tax_added_by_this_bracket

    if amount_left_to_account_for == 0
      return tax_so_far.floor
    end
  end

  raise "Iterated over all brackets without accounting for the entire amount. Missing the catch-all bracket?"
end
