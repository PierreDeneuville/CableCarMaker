class TelepheriquesController < ApplicationController

  def index
    @telepheriques = Telepherique.all
  end

  def show
    @telepherique = Telepherique.find(params[:id])
  end

  def new
    @telepherique = Telepherique.new
    @user = current_user
    @telepherique.user = @user
  end

  def create
    @telepherique = Telepherique.new(telepherique_params)
    @user = current_user
    @telepherique.user = @user

    if @telepherique.save
      flash[:notice] = "Your telepherique was successfully saved"
      redirect_to telepherique_path(@telepherique)
    else
      flash[:notice] = "Your telepherique was not saved"
      render :new
    end
  end

  private

  def telepherique_params
    params.require(:telepherique).permit(
      :localisation,
      :seats,
      :photos
    )
  end
end
