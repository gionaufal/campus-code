class Card < ActiveRecord::Base
  validates :front, presence: true
  has_many :comments
  def friendly_description
    "pt: #{front} -> en: #{back}"
  end
end
