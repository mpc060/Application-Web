class CreateOrdems < ActiveRecord::Migration[5.2]
  def change
    create_table :ordems do |t|
      t.date :data
      t.string :cliente
      t.string :relato
      t.string :colaborador
      t.boolean :resultado

      t.timestamps
    end
  end
end
