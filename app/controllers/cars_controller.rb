class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    car = Car.new(car_params)
    if car.save
      message = "#{car.year} #{car.make} #{car.model} $#{car.price} created"
    else
      message = 'Unable to add car'
    end

    redirect_to root_path, notice: message
  end

  private

    def car_params
      params.require(:car).permit(:make, :model, :year, :price)
    end
end
