class Card < ActiveRecord::Base
  validates :front, presence: true
  validates :back, presence: true

  def friendly_description
    "pt: #{front} -> en: #{back}"
  end
end
