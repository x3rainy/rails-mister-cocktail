class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i[show edit update destroy]

  def index
    @cocktails = Cocktail.all.order(:name)
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    redirect_to root_path if @cocktail.update(cocktail_params)
  end

  def destroy
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
