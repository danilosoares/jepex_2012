class Categoria < ActiveRecord::Base
  has_many :livros

  attr_accessible :nome

  validates_presence_of :nome, :message => " - campo obrigatorio."
end
