class CheckersController < ApplicationController
  def index
    @checkers = Checker.all
  end
end
