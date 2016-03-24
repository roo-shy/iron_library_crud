class BooksController < ApplicationController

  before_action do

  @current_user = User.find_by id: session[:user_id]
  if @current_user.blank?
    redirect_to sign_in_path
  end
end

  def index
    @books = Book.all
  end

  def full_name
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def create
      @book = Book.new
      @book.title = params[:book][:title]
      @book.author_id = params[:book][:author_id]
      @book.price = params[:book][:price]
      @book.image_url = params[:book][:image_url]

      if @book.save
        redirect_to books_path
      else
        render :new
      end
    end

    def book_params
      params.require(:book).permit(:title, :image_url, :author_id, :price)
    end


    def update
        @book = Book.find_by id: params[:id]
        @book.title = params[:book][:title]
        @book.author_id = params[:book][:author_id]
        @book.price = params[:book][:price]
        @book.image_ur = params[:book][:image_url]

        if @book.save
      # redirect to "/posts"
        redirect_to book_path(id: @book.id)
        else
        render :edit
     end
  end

      def delete
        @book = Book.find_by id: params[:id]
        @book.destroy
        redirect_to books_path

    end


end
