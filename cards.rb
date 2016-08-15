puts 'Bem vindo ao Card Systems'

# Essa é uma possível maneira de resolver o problema. Porém, ela é mais custosa para memória

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

option = 0

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
    puts "#{eng} -> #{port}"
  elsif option == 2
    puts 'Adeus'
    exit
  else
    puts 'Opção inválida'
    puts 'digite 1 ou 2'
  end
end
