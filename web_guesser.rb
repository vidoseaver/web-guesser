require 'sinatra'
require 'sinatra/reloader'
# require './views/index'
 NUMBER = rand(10)

get '/' do
  guess = params["guess"]
  message = check_guess(guess.to_i)
  erb :index, :locals => { guess: guess, message: message}
end

def check_guess(guess)
  case
  when (guess + 5) < NUMBER
    "way too low"
  when (guess - 5) > NUMBER
    "way too high"
  when guess > NUMBER
    "too high"
  when guess < NUMBER
    "too low"
  when guess == NUMBER
    "nailed it the secret number is #{NUMBER}"
  else
    ""
  end
end
