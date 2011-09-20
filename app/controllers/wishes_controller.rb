class WishesController < ApplicationController

  def new

  end

  def create
        
    w = Wish.create(:name => params[:name], :your_wish => params[:your_wish])
    if params[:secret] && params[:secret] == "on"
      w.secret = true
    end
    if params[:anonymous] && params[:anonymous] == "on"
      w.anonymous = true
    end
    w.save
    @wish_saved = true
    redirect_to :controller => :home, :action => :show

  end
end
