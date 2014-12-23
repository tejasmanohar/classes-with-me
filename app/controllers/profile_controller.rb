class ProfileController < ApplicationController
  
  def index
    @hide_navbar = false
    render 'index'
  end

  def show
    render 'show'
  end

  def edit
    render 'edit'
  end

end
