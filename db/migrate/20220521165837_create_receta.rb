class CreateReceta < ActiveRecord::Migration[7.0]
  def change
    create_table :receta do |t|
      t.string :dosis
      t.string :fecha_vencimiento
      t.integer :entregaxmes
      t.string :medicamentos
      t.string :descripcion_tratamiento

      t.timestamps
    end
  end
end
