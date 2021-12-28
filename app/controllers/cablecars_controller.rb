class CablecarsController < ApplicationController
  def index
    @cablecars = CableCar.all
  end

  def show
    @cablecar = CableCar.find(params[:id])
  end

  def new
    @cablecar = CableCar.new
    @user = current_user
    @cablecar.user = @user

  end

  def create
    @cablecar = CableCar.new(cablecar_params)

    if @cablecar.save
      flash[:notice] = "Your cablecar was successfully saved"
      redirect_to cablecar_path(@cablecar)
    else
      flash[:notice] = "Your cablecar was not saved"
      render :new
    end
  end

  private

  def cablecar_params
    params.require(:cablecar).permit(
      :name,
      :seats,
      :price,
      :city,
      :travel_length,
      :travel_speed,
      :travel_time,
      :upper_terminal,
      :lower_terminal,
      :photos
    )
  end
end
