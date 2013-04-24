class Review < ActiveRecord::Base
  belongs_to :genero
  mount_uploader :rimage, RimageUploader
  attr_accessible :titulo, :resumen, :rimage, :contenido, :fecha, :genero_id, :duracion, :idioma, :estado, :calidad, :tags

end
