require File.expand_path('lib/loja_virtual')

teste_e_design = Livro.new "TDD", "Mauricio Aniche", "123454",
247, 69.9, :testes
biblioteca = Biblioteca.new
biblioteca.adiciona teste_e_design


