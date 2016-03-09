class HomepageController < ApplicationController
  def show

    # if we've visited before, show the number that I store
    # else store a number, and show it to they

    @number = session[:secret_number]
    if @number.nil?
      @number = (1..1000).to_a.sample
      session[:secret_number] = @number
    end

    user_id = session[:user_id]
    if user_id.present?
      @current_user = User.find_by id: user_id
    end

  end
end
