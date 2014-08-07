class Biblioteca
  
  def initialize
    @banco_de_arquivos = BancoDeArquivos.new
  end
  
  def adiciona(livro)
    salva livro do 
     # @livros[livro.categoria] ||= []
      #@livros[livro.categoria] << livro
      @livros << livro 
    end
  end
  
  def livros
   # @livros.values.flatten #flatten quando temos array de array
    @livros ||= @banco_de_arquivos.carrega
  end
  
  def livros_por_categoria(categoria)
  
      #yield livro if block_given? #para blocos, nao precisa colocar argumento como assinatura
      #bloco_p.call livro
      #bloco_puts.call livro
    @livros.select{|livro| livro.categoria == categoria}
  end
  
 private
  def salva(livro)
    @banco_de_arquivos.salva livro
    yield
  end  
end