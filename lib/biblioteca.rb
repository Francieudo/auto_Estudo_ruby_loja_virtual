class Biblioteca
  
  def initialize
    @livros = {}
  end
  
  def adiciona(livro)
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
  end
  
  def livros
    @livros.values.flatten #flatten quando temos array de array
  end
  
  def livros_por_categoria(categoria, bloco_p, bloco_puts)
    @livros[categoria].each do |livro|
      #yield livro if block_given? #para blocos, nao precisa colocar argumento como assinatura
      bloco_p.call livro
      bloco_puts.call livro
    end
  end
  
end