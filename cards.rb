def show_cards cards
  puts 'Seus cards: '
  cards.each do |card|
    puts "#{card[:pt]} -> #{card[:en]}"
  end
end

def get_cards cards
  puts 'Insira uma expressão em inglês'
  eng = gets.chomp
  puts
  puts 'Insira a expressão em português'
  port = gets.chomp
  puts
  card = {pt: port, en: eng}
  cards << card
  puts "Você inseriu o card: #{card[:pt]} -> #{card[:en]}"
  puts 'Card inserido'
end

def menu
  puts
  puts 'Digite a opção desejada'
  puts '[1] Inserir um card'
  puts '[2] Exibir todos os cards'
  puts '[3] Buscar card'
  puts '[4] Sair'
  gets.to_i
  
end

option = 0
cards = []

puts 'Bem vindo ao Card Systems'

while option != 4
  option = menu
  system("clear")
  
  if option == 1
    get_cards cards
  elsif option == 4
    show_cards cards
    puts
    puts 'Adeus'
  elsif option == 3
    puts 'Método não implementado'
  elsif option == 2
    show_cards cards
  else
    puts 'Opção inválida'
    puts 'digite 1, 2 ou 3'
  end
end
