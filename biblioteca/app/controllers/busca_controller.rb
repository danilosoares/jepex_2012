class BuscaController < ApplicationController

	def busca

		if(params[:modelo] == "autor")
			
			@autores = Autor.find(:all, :conditions => ["nome like ?","%#{params[:search]}%"], :order => "nome")
			@model = "autor"
			render :template => 'autores/index.html.erb'
		
		elsif(params[:modelo] == "livro")
			
			@livros = Livro.find(:all, :conditions => ["titulo like ? or ano = ? or paginas = ? or issn like ?",
			"%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"], :order => "titulo")
			@model = "livro"
			render :template => 'livros/index.html.erb'

		elsif(params[:modelo] == "editora")

			@editoras = Editora.find(:all, :conditions => ["nome like ?","%#{params[:search]}%"], :order => "nome")
			@model = "editora"
			render :template => 'editoras/index.html.erb'

		else
			
			@categorias = Categoria.find(:all, :conditions => ["nome like ?","%#{params[:search]}%"], :order => "nome")
			@model = "categoria"
			render :template => 'categorias/index.html.erb'
		end

	end

end
