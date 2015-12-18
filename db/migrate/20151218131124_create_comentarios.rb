class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.belongs_to :livro, index: true, foreign_key: true
      t.text :mensagem
      t.integer :avaliacao
      t.boolean :status

      t.timestamps null: false
    end
  end
end
