class BankAccount
  @@num_accounts = 0
  def initialize
    @account_number = create_account()
    @checking_balance = 100
    @savings_balance = 50
    @@num_accounts += 1
    @interest_rate = 0.015
  end

  def num_of_accounts
    puts @@num_accounts
  end

  def display_account
    puts @account_number
  end

  def get_checking
    @checking_balance
  end

  def get_savings
    @savings_balance
  end

  def deposit (amount, account)
    if account == 'savings'
      @savings_balance += amount
    else
      @checking_balance += amount
    end
    self
  end

  def withdraw (amount, account)
    if account == 'savings'
      unless @savings_balance - amount < 0
        @savings_balance -= amount
      else
        puts "Insufficient funds"
      end
    else
      unless @checking_balance - amount < 0
        @checking_balance -= amount
      else
        puts "Insufficient funds"
      end
    end
    self
  end

  def display_balance
    puts "Total: $#{@checking_balance + @savings_balance}"
  end

  private
  def create_account
    acct = ""
    10.times {acct += rand(9).to_s}
    acct
  end
end

ba1 = BankAccount.new
