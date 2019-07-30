class Api::V1::GamesController < Api::V1::BaseController
  before_action :set_story, only: [:show]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
  end

  def update
  end

  def create
    @game = Game.create(game_params)
    if @game.save
      render :show, status: :cerated
    else
      render_error
    end
  end

  def destroy
  end

private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description)
  end
end
