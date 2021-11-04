module SavingsAccount
  def self.interest_rate(balance)
    interest_rate = -1
    if balance < 0
      interest_rate = -3.213
    elsif balance >= 0 and balance < 1000
      interest_rate = 0.5
    elsif balance >= 1000 and balance < 5000
      interest_rate = 1.621
    elsif balance >= 5000
      interest_rate = 2.475
    end

    interest_rate
  end

  def self.annual_balance_update(balance)
    if balance < 0
      return balance - (interest_rate(balance) * 0.01 * balance)
    else
      return balance + (interest_rate(balance) * 0.01 * balance)
    end
    return nil
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    if current_balance < 0 and desired_balance > current_balance
      return nil
    end

    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end

    return years
  end
end
