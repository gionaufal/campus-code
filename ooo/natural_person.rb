require_relative 'person'

class NaturalPerson < Person
  attr_reader :cpf

  def initialize(nome, sobrenome, cpf)
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf
  end
end
