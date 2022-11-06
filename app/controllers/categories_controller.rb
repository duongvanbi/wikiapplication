class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end
  def show
    @categorie = Category.find(params[:id])
  end
  def new
    @categorie = Category.new
  end
  def create
    @categorie = Category.new(categories_params)

    if @categorie.save
      redirect_to @categorie
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @categorie= Category.find(params[:id])
  end
  def update
    @categorie = Category.find(params[:id])

    if @categorie.update(categories_params)
      redirect_to @categorie
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @categorie = Category.find(params[:id])
    @categorie.destroy

    redirect_to categories_path, status: :see_other
  end
  private
    def categories_params
      params.require(:category).permit(:title, :description, :types)
    end
end