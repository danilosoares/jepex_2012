class CreateAutorLivros < ActiveRecord::Migration
  def change
    create_table :autor_livros do |t|
      t.integer :autor_id
      t.integer :livro_id

      t.timestamps
    end
  end
end
