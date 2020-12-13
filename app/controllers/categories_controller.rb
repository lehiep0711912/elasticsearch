class CategoriesController < ApplicationController
  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save!
  		redirect_to root_url
  	end	
  end
  private
  def category_params
  	params.require(:category).permit(:cate)
  end
end
