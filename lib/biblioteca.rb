class Biblioteca
  
  def initialize
    @livros = {}
    @banco_de_arquivos = BancoDeArquivos.new
  end
  
  def adiciona(livro)
    salva livro do 
      @livros[livro.categoria] ||= []
      @livros[livro.categoria] << livro    
    end
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
  
 private
  def salva(livro)
    @banco_de_arquivos.salva livro
    yield
  end  
end