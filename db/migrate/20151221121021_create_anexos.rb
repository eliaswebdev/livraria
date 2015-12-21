class CreateAnexos < ActiveRecord::Migration
  def change
    create_table :anexos do |t|
      t.belongs_to :livro, index: true, foreign_key: true
      t.string :descricao
      t.string :arquivo

      t.timestamps null: false
    end
  end
end
