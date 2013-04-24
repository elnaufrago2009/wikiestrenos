class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :titulo
      t.string :resumen
      t.date :fecha
      t.time :duracion
      t.string :idioma
      t.integer :estado
      t.string :calidad
      t.text :contenido
      t.integer :genero_id
      t.string :rimage
      t.string :tags
      t.integer :hit
      t.timestamps
    end
  end
end
