class ApiService

  def merchants_url
    get_url("http://localhost:3000/api/v1/merchants")
  end

  def merchant_items_url(id)
    get_url("http://localhost:3000/api/v1/merchants/#{id}/items")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end