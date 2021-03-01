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
    brand: "micster",
    style:  "wonder",
    color: "purple",
    size: "7-10",
    stock: "yes",
    )
    render 'show.json.jb'
  end

  def update

    render 'show.json.jb'
  end
end
