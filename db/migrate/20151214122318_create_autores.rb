class CreateAutores < ActiveRecord::Migration
  def change
    create_table :autores do |t|
      t.string :nome
      t.string :sobrenome

      t.timestamps null: false
    end
  end
end
