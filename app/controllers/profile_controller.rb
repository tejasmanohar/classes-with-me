class ProfileController < ActionController::Base
  
  def index
    render 'index'
  end

  def show
    render 'show'
  end

  def edit
    render 'edit'
  end

end
