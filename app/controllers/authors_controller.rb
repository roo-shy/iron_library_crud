class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find_by id: params[:id]
  end

  def create
    @author = Author.new
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.bio = params[:author][:bio]
    @author.photo_url = params[:author][:photo_url]

    if @author.save
      redirect_to authors_path
    else
      render :new
   end
 end

  def update
   @author = Author.new
   @author.first_name = params[:author][:first_name]
   @author.last_name = params[:author][:last_name]
   @author.bio = params[:author][:bio]
   @author.photo_url = params[:author][:photo_url]


    if @author.save
      redirect_to authors_path(id: @author.id)
    else
      render :edit
   end
 end

 def delete
    @author = Author.find_by id: params[:id]
    @author.destroy
    redirect_to authors_path
  end

end
