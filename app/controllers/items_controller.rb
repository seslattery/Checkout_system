class ItemsController < ApplicationController
  #def show
  #	@item = Item.find(params[:id])
  #end

  def new
  	@item = Item.new()
  end

  def show
  #	items = Item.all()
  end

  def create
  	@item = Item.new(params[:item])
  	if @item.save
#Need code Here
	# redirect_to @user
		flash[:alert] = "Got It! Thanks!"
		redirect_to '/'
  	else
  		render 'checkout'
  	end
  end
#Don't know if I need new?
  #def new
  #end
end
