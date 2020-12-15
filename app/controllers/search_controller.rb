class SearchController < ApplicationController
	def search
      if params[:q].nil?
        @books = []
        @users = []
      else
        @books = Book.limit(1000).search params[:q]
        @users = User.search params[:q]
        render json: {
        	data_books: @books,
        	data_users: @users
       	} 	
      end  
    end
end
