puts 'Bem vindo ao Card Systems'

# Essa é uma possível maneira de resolver o problema. Porém, ela é mais custosa para memória
#
#opção 1

# def intro
#   puts
#   puts 'Digite a opção desejada'
#   puts '[1] Inserir uma expressão'
#   puts '[2] Sair'
#   get_option
# end
#
# def get_option
#   option = gets.to_i
#   if option == 1
#     puts 'Insira uma expressão em inglês'
#     eng = gets.chomp
#     puts
#     puts 'Insira a expressão em português'
#     port = gets.chomp
#     puts
#     puts "#{eng} -> #{port}"
#     intro
#   elsif option == 2
#     puts 'Adeus'
#     exit
#   else
#     puts 'Opção inválida'
#     puts 'digite 1 ou 2'
#     get_option
#   end
# end
#
# intro
#
#opção 2

option = 0
cards = []

while option != 2
  puts
  puts 'Digite a opção desejada'
  puts '[1] Inserir uma expressão'
  puts '[2] Sair'

  option = gets.to_i
  if option == 1
    puts 'Insira uma expressão em inglês'
    eng = gets.chomp
    puts
    puts 'Insira a expressão em português'
    port = gets.chomp
    puts
    card = [eng, port]
    cards << card
    puts "#{eng} -> #{port}"
    puts 'Card inseridos'
  elsif option == 2
    puts 'Seus cards: ' + cards.to_s
    puts 'Adeus'
    exit
  else
    puts 'Opção inválida'
    puts 'digite 1 ou 2'
  end
end
