module ApplicationHelper
	def option_for_category
		@book.categories.pluck(:cate, :id)
	end
		
end
