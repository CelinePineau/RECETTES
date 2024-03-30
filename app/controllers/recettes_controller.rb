class RecettesController < ApplicationController

  def index
    @recettes = Recette.all
  end

  def show
    @recette = Recette.find(params[:id])
  end

  def new
    @recette = Recette.new
  end

  def create
    @recette = Recette.new(recette_params)
    @recette.save
    redirect_to recette_path(@recette)
  end

  def edit
    @recette = Recette.find(params[:id])
  end

  def update
    @recette = Recette.find(params[:id])
    @recette.update(recette_params)
    redirect_to recette_path(@recette)
  end

  def destroy
    @recette = Recette.find(params[:id])
    @recette.destroy
    redirect_to recettes_path, status: :see_other
  end

  def select
    keyword = params[:descrition]
    @recettes = Recette.where("descrition LIKE ?", "%#{keyword}%")
  end

  private

  def recette_params
    params.require(:recette).permit(:name, :descrition)
  end
end
