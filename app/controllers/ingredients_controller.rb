class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ing = Ingredient.create(ing_params)
    redirect_to ingredient_path(ing)
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ing_params)
    redirect_to ingredient_path(@ingredient)
  end

  private

  def ing_params
    params.require(:ingredient).permit(:name)
  end
end
