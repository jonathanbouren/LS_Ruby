# this is a test file for attempting refactoring without breaking the program
# Still getting an error message for nil:NilClass (NoMethodError)

  require 'pry'
  require 'yaml'
  require 'erb'
  name = 'name'

  MESSAGES = YAML.load_file('calculator_messages.yml')
  LANGUAGE = { '1' => 'en', '2' => 'ru' }

  def prompt(message)
    Kernel.puts("=> #{message}")
  end

  prompt(MESSAGES['language_menu'])

  def language_preference
    lang_choice = ' '
    loop do
      lang_choice = Kernel.gets().chomp()
      break if %w(1 2).include?(lang_choice)
    end
    LANGUAGE[lang_choice]
  end

  def number?(num)
    integer?(num) || float?(num)
  end

  def integer?(num)
    num.to_i().to_s() == num
  end

  def float?(num)
    num.to_f().to_s() == num
  end

  def operation_to_message(op)
    case op
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
    end
  end

  number1 = ' '
  number2 = ' '
  LANGUAGE = language_preference

  prompt(MESSAGES[LANGUAGE]['welcome'])

  name = ''
  loop do
    name = Kernel.gets().chomp()
    if name.empty?() || number?(name)
      prompt(format(MESSAGES[LANGUAGE]['valid_name']))

    else
      break
    end
  end

  prompt(format(MESSAGES[LANGUAGE]['greeting'], user_name: name))

  loop do
    loop do
      prompt(MESSAGES[LANGUAGE]['first_number'])
      number1 = Kernel.gets().chomp()

      if number?(number1) || float?(number1)
        break

      else
        prompt(MESSAGES[LANGUAGE]['number_not_valid'])
      end
    end
    operator = ' '
    loop do
      loop do
        prompt(MESSAGES[LANGUAGE]['second_number'])
        number2 = Kernel.gets().chomp()

        if number?(number2)
          break
        else
          prompt(MESSAGES[LANGUAGE]['number_not_valid'])
        end
      end

      prompt(MESSAGES[LANGUAGE]['operator_message'])

      operator = ' '
      loop do
        operator = Kernel.gets().chomp()
        if %w(1 2 3 4).include?(operator)
          break
        else
          prompt(MESSAGES[LANGUAGE]['choose_operator'])
        end
      end
      if number2 == '0' && operator == '4'
        prompt(MESSAGES[LANGUAGE]['zero_division'])
      else
        break
      end
    end

    prompt("#{operation_to_message(operator)} the numbers...")

    result = case operator
             when "1"
               number1.to_f() + number2.to_f()
             when "2"
               number1.to_f() - number2.to_f()
             when "3"
               number1.to_f() * number2.to_f()
             when "4"
               number1.to_f() / number2.to_f()
             end

    prompt(format(MESSAGES[LANGUAGE]['result'], op_result: result))

    prompt(MESSAGES[LANGUAGE]['another_calculation'])
    answer = Kernel.gets().chomp()

    break unless answer.downcase().start_with?('y')
  end

  prompt(MESSAGES[LANGUAGE]['thanks_bye'])
