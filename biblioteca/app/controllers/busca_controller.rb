class BuscaController < ApplicationController

	def busca_livro

		@livros = Livro.find(:all, :conditions => ["titulo like ? or ano = ? or paginas = ? or issn like ?",
			"%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"], :order => "titulo")
		
		render :action => 'livros/index'
	end

	def busca_autor
		@autores = Autor.find(:all, :conditions => ["nome like ?","%#{params[:search]}%"], :order => "nome")
		
		render :action => 'autores/index'
	end

	def busca_editora
		@editoras = Editora.find(:all, :conditions => ["nome like ?","%#{params[:search]}%"], :order => "nome")
		
		render :action => 'editoras/index'
	end

	def busca_categoria
		@categorias = Categoria.find(:all, :conditions => ["nome like ?","%#{params[:search]}%"], :order => "nome")
		
		render :action => 'categorias/index'
	end
	
end
