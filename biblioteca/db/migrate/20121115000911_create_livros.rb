class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.references :categoria
      t.references :editora
      t.string :titulo
      t.integer :paginas
      t.integer :ano
      t.string :issn

      t.timestamps
    end
    add_index :livros, :categoria_id
    add_index :livros, :editora_id
  end
end
