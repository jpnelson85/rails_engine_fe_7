class MerchantsController < ApplicationController

  def index
    @merchants = ApiFacade.new.merchants_index.data
  end

  def show 
    @items = ApiFacade.new.merchant_items_index(params[:id]).data
  end
end