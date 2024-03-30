class RecettesController < ApplicationController

  def index
    @recettes = Recette.all
  end

  def show
    @recette = Recette.find(params[:id])
  end

  def new
    @recette = Recette.new # Needed to instantiate the form_with
  end

  def create
    @recette = Recette.new(recette_params)
    @recette.save
    # No need for app/views/recettes/create.html.erb
    redirect_to recette_path(@recette)
  end

  def edit
    @recette = Recette.find(params[:id])
  end

  def update
    @recette = Recette.find(params[:id])
    @recette.update(recette_params)
    # No need for app/views/recettes/update.html.erb
    redirect_to recette_path(@recette)
  end

  def destroy
    @recette = Recette.find(params[:id])
    @recette.destroy
    # No need for app/views/recettes/destroy.html.erb
    redirect_to recettes_path, status: :see_other
  end

  private

  def recette_params
    params.require(:recette).permit(:name, :descrition)
  end
end
