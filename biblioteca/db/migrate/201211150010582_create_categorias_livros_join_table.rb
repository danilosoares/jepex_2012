class CreateCategoriasLivrosJoinTable < ActiveRecord::Migration
  def up
  	create_table :categorias_livros, id: false do |t|
  		t.integer :categoria_id
  		t.integer :livro_id
  	end
  end

  def down
  	drop_table :categorias_livros
  end
end
