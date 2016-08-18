class Card
  FILE = 'cards.txt'
  attr_reader :pt, :en

  def initialize(pt, en)
      @pt = pt
      @en = en
  end

  def to_s
      "#{pt} -> #{en}"
  end

  def include? word
    pt.downcase.include?(word) || en.downcase.include?(word)
  end

  def self.save(card)
    File.open(FILE, 'a+') do |file|
      file.puts card
    end
  end

  def self.find(word)
    all.select do |card|
      card.include? word
    end
  end
  
  def self.to_card(line)
    faces = line.chomp.split(' -> ')
    puts Card.new(faces[0], faces[1])
  end
  
  def self.all
    File.open(FILE).readlines.map do |line|
      to_card(line)
    end
  end



end
