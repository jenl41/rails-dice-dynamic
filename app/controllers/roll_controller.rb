class RollController < ApplicationController

  def roll
    @num_dice = params[:number_of_dice].to_i
    @sides = params[:how_many_sides].to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end

    render ({ :template => "homepage/two_six"})
  end
end
