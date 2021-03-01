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

    render 'show.json.jb'
  end
end
