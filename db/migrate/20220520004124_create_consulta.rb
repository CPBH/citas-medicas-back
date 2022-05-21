class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta do |t|
      t.references :orden, null: true, foreign_key: true
      t.references :receta, null: true, foreign_key: true
      t.string :decripcion_paciente
      t.timestamps
    end
  end
end
