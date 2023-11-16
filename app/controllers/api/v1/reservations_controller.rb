class Api::V1::ReservationsController < ApplicationController
  # GET /reservations
  def index
    @reservations = Reservation.includes(car: :user).all
    render json: serialize_reservations(@reservations)
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.destroy
      render json: { message: 'Reservation deleted successfully' }, status: 200
    else
      render json: { message: 'Something went wrong. Please try again later.' }, status: 500
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:car_id, :user_id, :city, :date)
  end

  def serialize_reservations(reservations)
    reservations.as_json(
      only: %i[id city date],
      include: {
        car: {
          only: %i[id name model description img finance_fee total_amount duration],
          include: {
            user: {
              only: %i[id name]
            }
          }
        },
        user: {
          only: %i[id name]
        }
      }
    )
  end
end
