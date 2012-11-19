class AutorLivro < ActiveRecord::Base
  attr_accessible :autor_id, :livro_id
  
  belongs_to :autor
  belongs_to :livro
end
