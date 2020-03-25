require 'rest-client'
require 'json'

class HomeController < ApplicationController
  def index
    
  end

  def cats
    response = RestClient.get("https://api.thecatapi.com/v1/images/search", headers={'x-api-key' => 'fd56e6ce-e1a8-4243-92dc-eb6ae6e76f5a'})
    
    puts @search_body = JSON.parse(response.body).first
    @cat_image_url = @search_body["url"]
  end

  def cats
    response = RestClient.get("https://api.thecatapi.com/v1/images/search", headers={'x-api-key' => 'fd56e6ce-e1a8-4243-92dc-eb6ae6e76f5a'})
    @search_body = JSON.parse(response.body).first
    @cat_image_url = @search_body["url"]
  end
end
