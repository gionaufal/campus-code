require_relative 'person'
class LegalPerson < Person
  attr_reader :cnpj

  def initialize(nome, sobrenome, cnpj)
    super(nome, sobrenome)
    @cnpj = cnpj    
  end
end
