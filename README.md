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

Para criar um método da própria classe, usar `self.`

Para herdar métodos de uma outra classe:
```
class Card < CardDefault
end
```

Em classes herdadas, se quiser chamar o método `.new` da classe pai, chama-se `super(attr)`

#### Métodos
* Se um método retorna bool, termina com '?'
* Métodos com efeito colateral (ex: alterar a string que está o chamando) terminam com '!'

-----

### Intro Web

Ruby gems são módulos/dependências0

Instalar Rails sem documentação: `gem install rails --no-ri --no-rdoc`

-----
Para criar arquivos, `File.new('nome', 'a+')`


Rails
===
Para criar um novo model:
`rails g model card front:string back:string`

Rails new padrão:
`rails new app_path --B --T` (skip bundle & skip test)

Gems para instalar depois:
* rspec
* capybara
* simplecov
* pry-byebug

setup:
* `rails generate rspec:install` + `bundle exec rspec`
* `bundle check`
