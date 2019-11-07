class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :update, :edit, :destroy]

  def index
    @doses = Dose.all
  end

  def new
    @ingredient = Ingredient.find(params[:ingredient_id])
    @dose.ingredient = @ingredient
    puts @ingredient.name
    puts @cocktail.name
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose = Dose.new(dose_params)
  end

  def create
    @ingredient = Ingredient.find(params[:ingredient_id])
    @dose.ingredient = @ingredient
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @dose.update(dose_params)
    # @ingredient = Ingredient.find(params[:ingredient_id])
    # @dose.ingredient = @ingredient
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end

    private
  def dose_params
    params.require(:dose).permit(:cocktail_id, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
