class Api::UrlInputController < ApplicationController
  def url_input
    name = params['name']
    @message = "your name is #{name}"
    if name[0] == 'a' || name[0] == 'A'
      @message = 'hey your name starts with the first letter of the alphabet'
    end
    render 'url_input.json.jb'
  end

  def game_logic(user_input, random_num)
    @message = if user_input < random_num
                 'too small'
               elsif user_input > random_num
                 'too big'
               else
                 'you guessed correctly!'
               end
  end

  def guess_game
    random_num = 12
    user_input = params['guess']
    @guess = user_input
    if user_input.nil?
      @message = 'make a guess by typing ?guess=number in the url'
    elsif !number?(user_input)
      @message = 'your guess must be a number'
    else
      game_logic(user_input.to_i, random_num)
    end

    render 'guess_game.json.jb'
  end

  private

  def number?(input)
    input.match(/\d/)
  end
end
