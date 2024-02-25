class ItemsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
  end

  def new
    @item = Item.new
  end

  def create
    
  end

  private

  def item_params
    params.requie(:item).permit(:content, :image).merge(user_id: current_user.id)
  end
end
