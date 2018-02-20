class CheckersController < ApplicationController
  def index
    @games = Game.find_by(name: "アズールレーン").checkers
  end
end
