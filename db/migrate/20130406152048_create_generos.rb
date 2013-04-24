class CreateGeneros < ActiveRecord::Migration
  def change
    create_table :generos do |t|
      t.string :nombre
      t.string :resumen

      t.timestamps
    end
  end
end
