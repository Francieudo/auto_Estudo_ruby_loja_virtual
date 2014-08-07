require File.expand_path('lib/loja_virtual')

teste_e_design = Livro.new "TDD", "Mauricio Aniche","123454",247, 69.9, :testes
p teste_e_design.valor # => 69.9
p teste_e_design.titulo # => "TDD"
windows = DVD.new "Windows 7 for Dummies", 98.9,:sistemas_operacionais
p windows.valor # => 98.9
p windows.titulo # => Windows 7 for Dummies


