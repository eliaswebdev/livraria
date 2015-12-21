class AddSlugToLivros < ActiveRecord::Migration
  def change
    add_column :livros, :slug, :string
  end
end
