require "open-uri"

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
  before_action :acquire_flats

  def index
  end

  def show
    # check if id from user (query params) match id of 'DB' here JSON
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def acquire_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end

# 1. needs get all data before other actions
# 2. get array of hashes >  @flats[1][:name] => nil flats[1]["name"] => "Trendy Apt in Buttes Montmartre"
