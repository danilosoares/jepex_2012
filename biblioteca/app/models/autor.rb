class Autor < ActiveRecord::Base
  has_and_belongs_to_many :livros

  attr_accessible :nome

  validates_presence_of :nome, :message => " - campo obrigatorio."
end
