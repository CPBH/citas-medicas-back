class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :tipo
      t.string :tipoDocumento
      t.string :numeroDocumento
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :email
      t.string :contrasena
      t.string :fechaNacimiento
      t.string :eps

      t.timestamps
    end
  end
end
