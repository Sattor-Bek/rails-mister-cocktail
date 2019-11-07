class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :update, :edit, :destroy]
  before_action :set_cocktail, only: [:create, :new]
  def index
    @doses = Dose.all
  end

  def new
    # @ingredient = Ingredient.find(params[:ingredient_id])
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end

  def create
    # @ingredient = Ingredient.find(params[:ingredient_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail[:id])
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    # @dose.update(dose_params)
    # @ingredient = Ingredient.find(params[:ingredient_id])
    # @dose.ingredient = @ingredient
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to cocktails_path
  end

    private
  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end


  def set_dose
    @dose = Dose.find(params[:id])
  end
end
