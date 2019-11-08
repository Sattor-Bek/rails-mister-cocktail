class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :update, :edit, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def new
    # @ingredient = Ingredient.find(params[:ingredient_id])
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    # @ingredient = Ingredient.find(params[:ingredient_id])
    # @cocktail.ingredient = @ingredient
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @cocktail.update(cocktail_params)
    # @ingredient = Ingredient.find(params[:ingredient_id])
    # @cocktail.ingredient = @ingredient
    redirect_to cocktails_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

    private
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
