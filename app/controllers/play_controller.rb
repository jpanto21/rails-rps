class PlayController < ApplicationController
    
  def home 
  render({ :template => "game_templates/home"})
  end

  def rock

    @user = "rock"
    @computer = ["rock", "paper", "scissors"].sample
  
    if @user == @computer
      @result = "It's a tie!"

    elsif (@user == "rock" && @computer == "scissors") 
          @result = "You win!"
    else
      @result = "Computer wins!"
    end

    render({ :template => "game_templates/play"})
  end 

  def scissors

    @user = "scissors"
    @computer = ["rock", "paper", "scissors"].sample

    if @user == @computer
      @result = "It's a tie!"

    elsif (@user == "scissors" && @computer == "paper") 
        @result = "You win!"
    else
      @result = "Computer wins!"
    end
    render({ :template => "game_templates/play"})
  end 

  def paper

    @user = "paper"
    @computer = ["rock", "paper", "scissors"].sample

    if @user == @computer
      @result = "It's a tie!"
   elsif (@user == "paper" && @computer == "rock") 
        @result = "You win!"
   else
    @result = "Computer wins!"
    end
  
    render({ :template => "game_templates/play"})
  end 
end
