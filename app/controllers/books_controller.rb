class BooksController < ApplicationController
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

    def update
      @book = Book.find_by id: params[:id]
      @book.title = params[:book][:title]
      @book.author_id = params[:book][:author_id]
      @book.price = params[:book][:price]
      @book.photo_url = params[:book][:photo_url]

      if @book.save
        redirect_to books_path
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
