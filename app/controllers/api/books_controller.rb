class Api::BooksController < ApplicationController
  def index
    @books = Book.all
  end
end
