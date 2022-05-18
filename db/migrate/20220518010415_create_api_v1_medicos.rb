class CreateApiV1Medicos < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_medicos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.string :titulo

      t.timestamps
    end
  end
end
