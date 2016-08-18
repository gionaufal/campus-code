class Person
  attr_reader :nome, :sobrenome

  def initialize(nome, sobrenome)
    @nome = nome
    @sobrenome = sobrenome
  end

  def nome_completo
    "#{nome} #{sobrenome}"
  end

end
