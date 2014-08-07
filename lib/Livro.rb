# coding: utf-8

class Livro
  attr_accessor :valor, :categoria
  attr_reader :isbn, :autor, :titulo
  
  def initialize(titulo,autor,numero_de_paginas,valor,categoria,isbn="1")
    @titulo = titulo
    @autor = autor
    @numero_de_paginas = numero_de_paginas
    @valor = valor
    @isbn = isbn
    @categoria = categoria
  end
  
  def to_s
    "Titulo: #{@titulo}, Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}, Categoria: #{@categoria}"
  end
  
  def eql?(outro_livro)
    @isbn == outro_livro.isbn
  end
  
  def hash
    @isbn.hash
  end
  
end