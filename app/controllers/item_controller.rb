class ItemController < ApplicationController
  def index
  end
  
  def new
    @item = Item.new
  end

  def create
  
    @item = Item.new
    @item.user_id = current_user.id
    @item.title = params[:item][:title]
    @item.category = params[:item][:category]
    @item.price = params[:item][:price]
    @item.harvest_time = params[:item][:harvest_time]
    @item.spray_free = params[:item][:spray_free]
    @item.organic = params[:item][:organic]
    @item.gluten_free = params[:item][:gluten_free]
    @item.description = params[:item][:description]
    @item.picture.attach(params[:item][:picture])
    if @item.save
      flash[:notice] = "Saved! Your produce has been added..."
      redirect_to shop_path
    else
      flash[:alert] = "Oops! There was a problem adding that item..."
      redirect_to sell_path
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end


  # DELETE Item from List
  def destroy
    title = Item.find(params[:id]).title
    Item.destroy(params[:id]) 
    flash[:notice] = "#{title} was removed from the Shop"
    redirect_to shop_path
  end

  def update
    @item = Item.find(params[:id])
    @item.title = params[:item][:title]
    @item.category = params[:item][:category]
    @item.price = params[:item][:price]
    @item.harvest_time = params[:item][:harvest_time]
    @item.spray_free = params[:item][:spray_free]
    @item.organic = params[:item][:organic]
    @item.gluten_free = params[:item][:gluten_free]
    @item.description = params[:item][:description]
    @item.picture.attach(params[:item][:picture])
    if @item.save
      redirect_to shop_path
    end
  end

end
