class Api::V1::GamesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_game, only: [:show, :update, :destroy]

  def index
    @games = Game.all
  end

  # def new
  #   @game = Game.new
  # end

  def show
  end

  def update
    if @game.update(game_params)
      render :show
    else
      render_error
    end
  end

  def create
    @game = Game.create(game_params)
    if @game.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @game.destroy
    head :no_content
  end

private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :user_id)
  end

  def render_error
    render json: { errors: @game.errors.full_messages },
      status: :unprocessable_entity
  end
end
