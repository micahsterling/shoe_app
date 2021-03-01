class Api::ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render 'index.json.jb'
  end

  def show
    @shoe = Shoe.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @shoe = Shoe.new(
    brand: params[:brand],
    style:  params[:style],
    color: params[:color],
    size: params[:size],
    stock: params[:stock],
    )
    @shoe.save
    render 'show.json.jb'
  end

  def update
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.brand = params[:brand] || @shoe.brand 
    @shoe.style =  params[:style] || @shoe.style
    @shoe.color = params[:color] || @shoe.color
    @shoe.size = params[:size] || @shoe.size
    @shoe.stock = params[:stock] || @shoe.stock
    @shoe.save
    render 'show.json.jb'
  end

  def destory
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.destroy
    render json: {message: "Item has been deleted"}
  end
end
