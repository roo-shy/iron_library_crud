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
      @book.photo_url = params[:book][:photo_url]

      if @book.save
        redirect_to books_path
      else
        render :new
      end
    end

    def user_params
      params.require(:user).permit(:profile_image)
    end
    
    def update

        @book = Book.find_by id: params[:id]
        @book.title = params[:book][:title]
        @book.author_id = params[:book][:author_id]
        @book.price = params[:book][:price]
        @book.photo_url = params[:book][:photo_url]

        if @book.save
          redirect_to books_path

        end
      end

      def delete
        @book = Book.find_by id: params[:id]
        @book.destroy
        redirect_to books_path

    end


end
