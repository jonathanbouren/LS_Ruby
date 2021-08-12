require 'io/console'
require 'pry'

VALID_CHOICES = ['r', 'p', 's', 'm', 'l']
Y_N = {
  'y' => 1,
  'n' => 2
}

RULES = <<-MSG
Scissors cuts Paper
Paper covers Rock
Rock crushes Lizard
Lizard poisons Spock
Spock smashes Scissors
Scissors decapitates Lizard
Lizard eats Paper
Paper disproves Spock
Spock vaporizes Rock
Rock crushes Scissors
MSG

LOSE_MESSAGE = <<-MSG
DEFEAT...
   You are not defeated when you lose.
   You are defeated when you quit.
            ~Paulo Coelho~
MSG

WIN_MESSAGE = <<-MSG
VICTORY!!!
   Winning isn't everything...
   It's the ONLY thing.
          ~Vince Lombardi~
MSG

WIN_SCORE = 4
WEAPONS = <<-WPNS
Hit r for rock
     p for paper
     s for scissors
     m for Mr. Spock
     l for lizard
WPNS

WINNERS = {
  'r' => ['s', 'l'],
  'p' => ['r', 'm'],
  's' => ['p', 'l'],
  'm' => ['r', 's'],
  'l' => ['p', 'm']
}
SCORE = {
  pscore: 1,
  cscore: 1
}

def play_again
  answer = ' '
  loop do
    prompt('Do you want to play again? y if yes, n if no')
    answer = Kernel.gets().chomp()
    if Y_N.include?(answer.downcase())
      break
    else
      system('clear')
      prompt('y or n, cmon, you can do it!')
    end
  end
  Y_N[answer] # having system('clear') in a method definition is a BAD IDEA!!!!
end

def welcome
  prompt("Welcome to Rock Paper Scissors Spock Lizard!")
  sleep(2.5)
  system('clear')
end

def continue?
  prompt("Tap any key to continue...")
  $stdin.getch
end

def show_rules
  system('clear')
  puts RULES
end

def rules
  loop do
    prompt("Want to hear the rules? (Y for Yes , N for No)")
    rule_answer = Kernel.gets().chomp()
    case rule_answer.downcase()
    when 'y'
      show_rules()
      break if continue?()
    when 'n'
      prompt("OK, bring it!")
      break
    else
      system('clear')
      prompt("I'm waiting on a y or n here...")
    end
  end
end

def valid_selection?(selection)
  VALID_CHOICES.include?(selection)
end

CAPS = {
  'r' => 'Rock',
  'p' => 'Paper',
  's' => 'Scissors',
  'm' => 'Mr. Spock',
  'l' => 'Lizard'
}

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won the round!')
  elsif win?(computer, player)
    prompt('You lost the round!')
  else
    prompt('It was a tie!')
  end
end

def player_1_score(player, computer)
  if win?(player, computer)
    SCORE[:pscore] = SCORE[:pscore] + 1
  end
end

def player_2_score(player, computer)
  if win?(computer, player)
    SCORE[:cscore] = SCORE[:cscore] + 1
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNERS[first].include?(second)
end

def player_wins
  if SCORE[:pscore] == WIN_SCORE
    system('clear')
    prompt(WIN_MESSAGE)
    reset_score()
  end
end

def computer_wins
  if SCORE[:cscore] == WIN_SCORE
    system('clear')
    prompt(LOSE_MESSAGE)
    reset_score()
  end
end

def reset_score
  SCORE[:pscore] = 1
  SCORE[:cscore] = 1
end

system('clear')
welcome()
rules()

loop do # outer loop
  system('clear')
  choice = ' '

  loop do # score loop
    loop do
      prompt("Choose your weapon:\n #{WEAPONS}")
      choice = Kernel.gets().chomp()
      if valid_selection?(choice.downcase())
        break
      else
        system('clear')
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    system('clear')
    prompt("You chose #{CAPS[choice]},opponent chose #{CAPS[computer_choice]}.")

    display_results(choice, computer_choice)
    player_1_score(choice, computer_choice)
    player_2_score(choice, computer_choice)
    prompt("Your score is #{SCORE[:pscore] - 1}")
    prompt("Your opponents score is #{SCORE[:cscore] - 1}")
    break if player_wins()
    break if computer_wins()
  end # score loop
  answer = play_again()
  case answer
  when 2
    break
  when 1
    next
  end
  system('clear')
end # outer loop
system('clear')
prompt('Thank you for playing, goodbye!')
sleep(2)
