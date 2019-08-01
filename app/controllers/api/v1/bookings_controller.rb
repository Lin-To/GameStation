class Api::V1::BookingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :set_booking, only: [:show, :update, :destroy]

  # should be able to show an individual booking
  def show
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @booking.destroy
    head :no_content
  end

  def update
    if @booking.update(booking_params)
      render :show
    else
      render_error
    end
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :game_id, :user_id, :start_date, :end_date)
  end

  def render_error
    render json: { errors: @booking.errors.full_messages },
      status: :unprocessable_entity
  end
end
