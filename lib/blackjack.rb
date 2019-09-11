def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  card_total = sum
  display_card_total(card_total)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  case get_user_input
  when 'h'
    return deal_card + card_total
  when 's'
    return card_total
  end
  invalid_command
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current_card_total = initial_round
  until current_card_total > 21
    current_card_total = hit?(current_card_total)
    display_card_total(current_card_total)
  end
  end_game(current_card_total)
end
    