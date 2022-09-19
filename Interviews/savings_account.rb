module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      -3.213
    elsif balance < 1000
      0.5
    elsif balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    (interest_rate(balance).abs * balance)/100 + balance
    if balance.negative?
      (3.213 * balance)/100 + balance
    elsif balance < 1000
      (0.5 * balance)/100 + balance
    elsif balance < 5000
      (1.621 * balance)/100 + balance
    else
      (2.475 * balance)/100 + balance
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    until current_balance > desired_balance
      current_balance = annual_balance_update(current_balance)
      puts "#{years += 1} - current_balance #{current_balance}"
    end
    years
  end
end

p SavingsAccount.interest_rate(-200.75)
p SavingsAccount.annual_balance_update(200.75)
p SavingsAccount.years_before_desired_balance(200.75, 220.88)


# ///////// RFACTORED
module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      -3.213
    elsif balance < 1000
      0.5
    elsif balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    (interest_rate(balance).abs * balance)/100 + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    until current_balance >= desired_balance
      current_balance = annual_balance_update(current_balance)
      puts "#{years += 1} - current_balance #{current_balance}"
    end
    years
  end
end
