class BooksController < ApplicationController
  def index
    if params['cate'] == nil
  	  @books = Book.all
    else 
      @books = Book.joins(:categories).where("cate=?", params['cate'])
    end  
  end

  def new
  	@book = Book.new
  end
  def create
  	@book = Book.new(book_params)
  	if @book.save
  		flash[:success] = "book created"
  		redirect_to books_path
    else 
      render :new  
  	end	
  end	
  def show
  	@book = Book.find_by id: params[:id]
  end
  private
  def book_params
  	params.require(:book).permit(:name, :author, :des, category_ids:[])
  end

end
