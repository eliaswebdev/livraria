class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.belongs_to :categoria, index: true, foreign_key: true
      t.references :editora, index: true, foreign_key: true
      t.string :titulo
      t.string :isbn
      t.text :descricao
      t.integer :ano

      t.timestamps null: false
    end
  end
end
