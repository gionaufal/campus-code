class Card 
  attr_reader :pt, :en
  
  def initialize(pt, en)
      @pt = pt
      @en = en
  end

  def to_s
      "#{pt} -> #{en}"
  end
  
end