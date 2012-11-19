class Livro < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :editora
  
  has_many :autor_livros
  has_many :autores, :through => :autor_livros
  

  attr_accessible :ano, :issn, :paginas, :titulo, :categoria_id, :editora_id, :autor_ids

  validates_presence_of :ano, :message => " - campo obrigatorio"
  validates_presence_of :issn, :message => " - campo obrigatorio"
  validates_presence_of :paginas, :message => " - campo obrigatorio"
  validates_presence_of :titulo, :message => " - campo obrigatorio"
  validates_presence_of :categoria_id, :message => " - campo obrigatorio"
  validates_presence_of :editora_id, :message => " - campo obrigatorio"
  
  validates_associated :categoria
  validates_associated :editora
end
