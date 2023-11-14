class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    if @car
      render json: @car
    else
      render json: { error: 'Car is not found' }, status: :not_found
    end
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car, status: :created
    else
      render json: { error: @car.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      render json: @car
    else
      render json: { error: @car.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :model, :description, :img, :finance_fee, :total_amount, :duration, :user_id)
  end
end
