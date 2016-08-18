FILE = 'cards.txt'

require_relative 'card'

def print_cards
  File.open(FILE).readlines.each do |card|
    puts card
  end
end

def get_cards
  puts 'Insira uma expressão em inglês'
  eng = gets.chomp
  puts
  puts 'Insira a expressão em português'
  port = gets.chomp
  puts
  card = Card.new(port, eng)
  File.open(FILE, 'a+') do |file|
    file.puts card
  end
  puts "Você inseriu o card: #{card}"
end

def find_card
  print 'Digite a expressão: '
  word = gets.chomp.downcase

  search = File.open(FILE).readlines.select do |card|
    card.include? word
  end

  puts "Cards encontrados: #{search.count}"
  search.each do |card|
    puts card
  end
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

puts 'Bem vindo ao Card Systems'

while option != EXIT_SYSTEM
  option = menu
  system("clear")

  if option == INSERT_CARD
    get_cards
  elsif option == EXIT_SYSTEM
    puts 'Seus cards: '
    print_cards
    puts
    puts 'Adeus!'
  elsif option == SEARCH_CARDS
    find_card
  elsif option == SHOW_CARDS
    puts 'Seus cards: '
    print_cards
  else
    puts 'Opção inválida'
    puts 'digite 1, 2 ou 3'
  end
end
