class IniciosController < ApplicationController
  #load_and_authorize_resource
	layout "frontend"
	def index
    @reviews = Review.paginate(:page => params[:page], :per_page => 12, :conditions => ['lower (titulo) like ?', "%#{params[:search]}%"]).order("id Desc")
    @generos = Genero.all
  end

  def ver
    @review = Review.find(params[:id])
    @reviews = Review.limit(6)
    @generos = Genero.all
  end

  def generos
    @generos = Genero.all
    @reviews = Review.paginate(:page => params[:page], :per_page => 8, :conditions => ['genero_id = ?', "#{params[:genero]}"]).order("id Desc")
  end
end 