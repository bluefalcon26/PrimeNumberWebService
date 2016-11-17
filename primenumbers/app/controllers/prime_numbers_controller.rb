require 'prime'
require 'json'

class PrimeNumbersController < ApplicationController
  def index
  end

  def show
    @results = Prime.take(1000)

    render json: @results.to_json
  end
end
