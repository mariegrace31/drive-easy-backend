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

  private

  def reservation_params
    params.require(:reservation).permit(:car_id, :user_id, :city, :date)
  end

  def serialize_reservations(reservations)
    reservations.as_json(
      only: [:id, :city, :date],
      include: {
        car: {
          only: [:id, :name, :model, :description, :img, :finance_fee, :total_amount, :duration],
          include: {
            user: {
              only: [:id, :name]
            }
          }
        },
        user: {
          only: [:id, :name]
        }
      }
    )
  end
end
