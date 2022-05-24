class CreateHistoria < ActiveRecord::Migration[7.0]
  def change
    create_table :historia do |t|
      t.references :usuario, null: false, foreign_key: true
      #t.references :consulta, null: true, foreign_key: true
      t.string :enfermedades
      t.string :antecedentes
      t.string :resultados
      t.timestamps
    end
  end
end
