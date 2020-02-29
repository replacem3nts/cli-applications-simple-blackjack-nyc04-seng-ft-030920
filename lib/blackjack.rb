require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(ct)
  puts "Your cards add up to #{ct}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(ct)
  puts "Sorry, you hit #{ct}. Thanks for playing!"
end

def initial_round
  ct = 0
  2.times {ct += deal_card}
  display_card_total(ct)
  ct
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  call = get_user_input
    if call != "h"
      if call != "s"
        invalid_command
        prompt_user
        get_user_input
      end
    end
  if (call == "h" || "s")
    call == "h" ? total += deal_card : prompt_user
  end
  total
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  new_total hit?(total)
  until hit?(total) > 21 do
    hit?
  end
  
  end_game
end
    
