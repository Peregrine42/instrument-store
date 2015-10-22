class StockController < ApplicationController
  def move
    @stock = Stock.find(params[:id])
    @warehouses = Warehouses.all
  end
end