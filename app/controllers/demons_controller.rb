class DemonsController < ApplicationController
  def index
    @demons = Demon.all
  end
end
