class Matchweek < ApplicationRecord
  belongs_to :league
  has_many :matches

  def next
    self.class.where("number > ?", number).order(number: :asc).first
  end

  def previous
    self.class.where("number < ?", number).order(number: :asc).last
  end
end
