class Film < ActiveRecord::Base
  belongs_to :director
  belongs_to :category

  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
end
