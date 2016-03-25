class AuthorsController < ApplicationController

  before_action do

  @current_user = User.find_by id: session[:user_id]
  if @current_user.blank?
    redirect_to sign_in_path
  end
end

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
    @author.full_name = params[:author][:full_name]
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
     @author.full_name = params[:author][:full_name]
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
