class Livro < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :editora
  has_and_belongs_to_many :autores

  attr_accessible :ano, :issn, :paginas, :titulo, :categoria_id, :editora_id, :autor_id

  validates_presence_of :ano, :message => " - campo obrigatorio"
  validates_presence_of :issn, :message => " - campo obrigatorio"
  validates_presence_of :paginas, :message => " - campo obrigatorio"
  validates_presence_of :titulo, :message => " - campo obrigatorio"
  validates_presence_of :categoria_id, :message => " - campo obrigatorio"
  validates_presence_of :editora, :message => " - campo obrigatorio"
end
