class HomeController < ApplicationController

  layout "main"  

  def show

  @wishes = Wish.find :all
  end

end
