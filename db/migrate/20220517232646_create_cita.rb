class CreateCita < ActiveRecord::Migration[7.0]
  def change
    create_table :cita do |t|
      t.references :usuario, null: false, foreign_key: true
      t.string :fecha
      t.string :tipo
      t.string :estado

      t.timestamps
    end
  end
end
