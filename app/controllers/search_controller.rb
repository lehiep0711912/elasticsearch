class SearchController < ApplicationController
	def search
      if params[:q].nil?
        @books = []
        @categories = []
      else
      	@books = Book.search params[:q]
      	@categories =  Category.search params[:q]
  
      end
    end
end
