def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num = deal_card + deal_card
  display_card_total(num)
  num
end

def hit?(num)
  prompt_user
  answer = get_user_input
  case answer
  when "s"
   num
  when "h" 
   num + deal_card
  else 
   invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num > 21
  num = hit?(num)
  display_card_total(num)
  end 
 end_game(num)
end
    
