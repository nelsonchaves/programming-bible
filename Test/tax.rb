class TaxIncome
  def self.tax_bracket(amount)
    case amount
    when 1..10000
      0.2
    when 10000..20000
      0.3
    when 20000..50000
      0.4
    when 50000..100000
      0.5
    end
  end

  def tax(balance)
    (interest(balance) * balance)/100
  end
end
p TaxIncome.tax(100)
