class Film < ActiveRecord::Base
  belongs_to :director
  belongs_to :category

  validates :title, presence: true
  validates :year, numericality: { only_integer: true }

  scope :planned, -> { where('planned_at IS NOT NULL') }
  scope :viewed, -> { where('seen_at IS NOT NULL') }
end
