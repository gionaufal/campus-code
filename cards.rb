require_relative 'card'

def print_cards cards
  cards.each do |card|
    puts "#{card}"
  end
end

def get_cards cards
  puts 'Insira uma expressão em inglês'
  eng = gets.chomp
  puts
  puts 'Insira a expressão em português'
  port = gets.chomp
  puts
  card = Card.new(port, eng)
  cards << card
  puts "Você inseriu o card: #{card}"
  puts 'Card inserido'
end

def find_card cards
  print 'Digite a expressão: '
  word = gets.chomp.downcase
  
  search = cards.select do |card|
    card.en.downcase == word || card.pt.downcase == word
  end

  print_cards search
  
end

INSERT_CARD = 1
SHOW_CARDS = 2
SEARCH_CARDS = 3
EXIT_SYSTEM = 4

def menu
  puts
  puts 'Digite a opção desejada'
  puts "[#{INSERT_CARD}] Inserir um card"
  puts "[#{SHOW_CARDS}] Exibir todos os cards"
  puts "[#{SEARCH_CARDS}] Buscar card"
  puts "[#{EXIT_SYSTEM}] Sair"
  gets.to_i
  
end

option = ''
cards = []

puts 'Bem vindo ao Card Systems'

while option != EXIT_SYSTEM
  option = menu
  system("clear")
  
  if option == INSERT_CARD
    get_cards cards
  elsif option == EXIT_SYSTEM
    puts 'Seus cards: '
    print_cards cards
    puts
    puts 'Adeus'
  elsif option == SEARCH_CARDS
    find_card cards
  elsif option == SHOW_CARDS
    puts 'Seus cards: '
    print_cards cards
  else
    puts 'Opção inválida'
    puts 'digite 1, 2 ou 3'
  end
end
