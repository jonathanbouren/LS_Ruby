require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
YES_ANSWERS = ["y", "yes", "yeah", "yep", "ok", "sure", "probably"]
NO_ANSWERS = ["n", "no", "nope", "nada", "no way", "never", "not really"]

def wave_left
  system("clear")
  puts "=>"
  puts "==>"
  puts "===>"
  puts "====>    _"
  prompt("    (._.)/`  Have a nice day!")
  puts "====>   /|\  "
  puts "===>       "
  puts "==>"
  puts "=>"
  sleep(2)
  system("clear")
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f().to_s() == num || num.to_i().to_s() == num
end

def valid_time?(num)
  num.to_i().to_s() == num
end

def loan_years
  time_years = ' '
  loop do
    prompt("Years :")
    time_years = Kernel.gets().chomp()
    if valid_time?(time_years)
      time_years = time_years.to_i() * 12
      break
    else
      system("clear")
      prompt(MESSAGES['time_error_years'])
    end
  end
  time_years
end

def loan_months
  time_months = ' '
  loop do
    prompt("Months :")
    time_months = Kernel.gets().chomp()
    system("clear")
    if valid_time?(time_months)
      time_months = time_months.to_i()
      break
    else
      system("clear")
      prompt(MESSAGES['time_error_months'])
    end
  end
  time_months
end

def loan_amount
  loan_amount_float = ' '
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount_float = Kernel.gets().chomp().delete(',')
    break if valid_number?(loan_amount_float)
    system("clear")
    prompt(MESSAGES['num_error'])
  end
  system("clear")
  loan_amount_float = loan_amount_float.to_f()
end

def loan_length
  system("clear")
  prompt(MESSAGES['loan_length'])

  time_years = loan_years()
  time_months = loan_months()
  time_years + time_months
end

def interest_conversion
  interest = ' '
  loop do
    prompt(MESSAGES['interest_msg'])
    interest = Kernel.gets().chomp()

    if valid_number?(interest)
      interest = interest.to_f()
      interest = (interest / 100) / 12
      break
    else
      system("clear")
      prompt(MESSAGES['interest_error'])
    end
  end
  interest
end

def break?(ans)
  @check_again == 2
end

def no_break?(ans)
  @check_again == 1
end

@check_again = ' '
def another_calculation?
  loop do
    @check_again = ' '
    prompt(MESSAGES['another_loan'])
    @check_again = Kernel.gets().chomp().downcase()
    if YES_ANSWERS.include?(@check_again)
      @check_again = 1
      break
    elsif NO_ANSWERS.include?(@check_again)
      @check_again = 2
      break
    else
      prompt(MESSAGES['exit_error'])
    end
  end
end

loop do
  system("clear")
  loan_tot = loan_amount()
  total_months = loan_length()
  int = interest_conversion()
  payment = loan_tot * (int / (1 - (1 + int)**(-total_months)))
  system("clear")
  prompt(format(MESSAGES['result_message'], loan_amount: loan_tot,
                                            loan_time: total_months,
                                            payment: payment.round(2)))

  loop do
    another_calculation?()
    break if break?(@check_again)
    break if no_break?(@check_again)
  end
  case @check_again
  when 1
    next
  when 2
    wave_left()
    break
  end
end # outer loop
