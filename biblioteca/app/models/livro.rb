class Livro < ActiveRecord::Base
  belongs_to :categoria
  attr_accessible :ano, :issn, :paginas, :titulo
end
