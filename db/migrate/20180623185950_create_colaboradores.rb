class CreateColaboradores < ActiveRecord::Migration[5.2]
  def change
    create_table :colaboradores do |t|
      t.string :nome

      t.timestamps
    end
  end
end
