#Campus Code - Imersão Web
### Repositório com anotações e exercícios da Imersão Web do Campus Code

Variável com letra maiúscula == Constante

3 convenções:
* Interpretador Ruby
* Boas práticas - com o intuito de legibilidade: você escrevendo para outro programador
* Rails

' ' -> string literal

" " -> permite interpolação #{ }

100_000 == 100000

Tudo em Ruby é objeto: tem estados e responde a comandos

Indentação em Ruby = 2 espaços!

####Classes

`attr_accessor` faz com que os métodos para leitura e definição dentro de uma classe sejam desnecessários

`attr_reader` serve só para leitura

`attr_writer` serve só para escrita

#### Métodos
* Se um método retorna bool, termina com '?'
* Métodos com efeito colateral (ex: alterar a string que está o chamando) terminam com '!'

-----

Para criar arquivos, `File.new('nome', 'w+')`
