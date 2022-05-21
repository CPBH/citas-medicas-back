class CreateOrdens < ActiveRecord::Migration[7.0]
  def change
    create_table :ordens do |t|
      t.string :descripcion
      t.string :margen_de_tiempo

      t.timestamps
    end
  end
end
