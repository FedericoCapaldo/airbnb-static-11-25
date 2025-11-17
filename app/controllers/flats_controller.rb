class FlatsController < ApplicationController

  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.parse(url).read)
  end
end
