class CheckersController < ApplicationController
  def index
    @games = Game.all
  end
end
