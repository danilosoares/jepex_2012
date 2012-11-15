class CreateAutoresLivrosJoinTable < ActiveRecord::Migration
  def up
  	create_table :autores_livros, id: false do |t|
  		t.integer :autor_id
  		t.integer :livro_id
  	end
  end

  def down
  	drop_table :autores_livros
  end
end
