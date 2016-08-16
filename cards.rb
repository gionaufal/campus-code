puts 'Bem vindo ao Card Systems'

option = 0
cards = []

while option != 3
  puts
  puts 'Digite a opção desejada'
  puts '[1] Inserir uma expressão'
  puts '[2] Ver cards'
  puts '[3] Sair'

  option = gets.to_i
  if option == 1
    puts 'Insira uma expressão em inglês'
    eng = gets.chomp
    puts
    puts 'Insira a expressão em português'
    port = gets.chomp
    puts
    card = {pt: port, en: eng}
    cards << card
    puts card
    puts 'Card inserido'
  elsif option == 3
    puts 'Seus cards: '
    cards.each do |card|
      puts "#{card[:pt]} -> #{card[:en]}"
    end
    puts
    puts 'Adeus'
    exit
  elsif option == 2
    cards.each do |card|
      puts "#{card[:pt]} -> #{card[:en]}"
    end
  else
    puts 'Opção inválida'
    puts 'digite 1 ou 2'
  end
end
