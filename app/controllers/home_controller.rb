class HomeController < ApplicationController

  layout "main"  

  def show

    @wishes = Wish.find(:all, :order => "created_at DESC")
  end

end
