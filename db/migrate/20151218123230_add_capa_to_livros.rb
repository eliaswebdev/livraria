class AddCapaToLivros < ActiveRecord::Migration
  def change
    add_column :livros, :capa, :string
  end
end
