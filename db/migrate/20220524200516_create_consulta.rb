class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta do |t|
      t.string :numeroDocumento
      t.string :enfermedades
      t.string :cirugias
      t.string :medicamentos

      t.timestamps
    end
  end
end
