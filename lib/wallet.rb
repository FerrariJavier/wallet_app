class Wallet
  @@all = []

  def initialize amount
    @balance = amount
    Wallet.all.push self
  end

  def self.all
    @@all
  end

  def check
    @balance
  end

  def deposit amount
    @balance += amount
  end

  def withdraw amount
    return false if amount > @balance

    @balance -= amount
  end

  def send_money amount, wallet
    return wallet.deposit(amount) if withdraw(amount)

    false
  end
end

