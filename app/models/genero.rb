class Genero < ActiveRecord::Base
  has_many :reviews
  attr_accessible :nombre, :resumen
end
