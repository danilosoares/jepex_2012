class Autor < ActiveRecord::Base
  
  has_many :autor_livros
  has_many :livros, :through => :autor_livros
  

  attr_accessible :nome, :livro_ids

  validates_presence_of :nome, :message => " - campo obrigatorio."
end
