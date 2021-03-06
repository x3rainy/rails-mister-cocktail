class DosesController < ApplicationController
  # def new
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose = Dose.new
  #   @dose.cocktail = @cocktail
  # end

  def create
    @dose = Dose.new(description: params[:dose][:description])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end
end
