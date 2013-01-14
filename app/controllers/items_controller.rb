class ItemsController < ApplicationController
  #def show
  #	@item = Item.find(params[:id])
  #end

  def new
  	@item = Item.new()
  end

  def return
    item = Item.find(params[:format])
    if item.update_attributes(returned: true)
     flash[:error] = "Got it! Thanks for returning it!"
     redirect_to '/'
    else
      flash[:warning] = "Oops! Didn't save it"
      redirect_to '/'
    end
  end

  def show
  #	items = Item.all()
  end

  def create
  	@item = Item.new(params[:item])
  	if @item.save
#Need code Here
	# redirect_to @user
		flash[:error] = "Got it! Please bring it back soon!"
		redirect_to '/'
  	else
  		redirect_to 'checkout'
  	end
  end
  def destroy
    Item.find(params[:id]).destroy
    flash[:error] = "Item destroyed."
    redirect_to '/'
  end
#Don't know if I need new?
  #def new
  #end
end
#  background-image:url(assets/crissXcross.png); 
  #width:100%; 
  #height:auto;
#
#