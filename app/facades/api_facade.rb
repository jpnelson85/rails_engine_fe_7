class ApiFacade
  def service 
    ApiService.new
  end

  def merchants_index
    Merchants.new(service.merchants_url)
  end

  def merchant_items_index(id)
    MerchantItems.new(service.merchant_items_url(id))
  end
end