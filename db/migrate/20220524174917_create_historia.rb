class CreateHistoria < ActiveRecord::Migration[7.0]
  def change
    create_table :historia do |t|
      t.string :numeroDocumento
      t.string :enfermedades
      t.string :cirugias
      t.string :antecedentes
      t.string :resultados

      t.timestamps
    end
  end
end
