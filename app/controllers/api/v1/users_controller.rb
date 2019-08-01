class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def show
    # show all games owned by a user
    @user = User.find(params[:id])
    @games = @user.games
    @bookings = @user.bookings
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render :show, status: :created
    else
      render_error
    end
  end

  def user_params
    # permit open_id?
    params.require(:user).permit(:name, :description, :avatar)
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end
end
