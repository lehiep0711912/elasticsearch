class ApplicationController < ActionController::Base
	include SearchHelper
	# before_action :search
	# def search
	#   if params[:q].nil?
 #        @items = []
 #      else
 #      	@items = Book.search params[:q]
 #      end		
	# end
end
