class CreateAutoresLivros < ActiveRecord::Migration
  def change
    create_table :autores_livros do |t|
      t.belongs_to :autor, index: true, foreign_key: true
      t.belongs_to :livro, index: true, foreign_key: true
    end
  end
end
