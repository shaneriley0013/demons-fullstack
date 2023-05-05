class DemonsController < ApplicationController
  
  def index
    @demons = Demon.all
  end

  def show
    @demon = Demon.find(params[:id])
  end

  def new
    @demon = Demon.new
  end

  def create
    @demon = Demon.new(demon_params)

    if @demon.save
      redirect_to @demon
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @demon = Demon.find(params[:id])
  end

  def update
    @demon = Demon.find(params[:id])

    if @demon.update(demon_params)
      redirect_to @demon
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @demon = Demon.find(params[:id])
    @demon.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def demon_params
      params.require(:demon).permit(:name, :title, :description, :image_url)
    end

end




