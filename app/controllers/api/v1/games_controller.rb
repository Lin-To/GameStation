class Api::V1::GamesController < Api::V1::BaseController

  def index

  end

  def new
  end

  def show
  end

  def update
  end

  def create
  end

  def destroy
  end

private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit
  end


end
