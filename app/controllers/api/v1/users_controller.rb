class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:show]

  def show
    # show all games owned by a user
    @user = User.find(params[:id])
    @games = @user.games
  end
end
