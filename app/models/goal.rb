class Goal < ApplicationRecord
  extend Enumerize

  LIKERT_SCORE = { blank: 0, poor: 1, fair: 2, average: 3, good: 4, excellent: 5 }.freeze

  validates :actual_score, :target_score, presence: true
  validates :target_score, :actual_score, numericality: { greater_than_or_equal_to: 0 }

  enumerize :target_score, in: LIKERT_SCORE, default: 0
  enumerize :actual_score, in: LIKERT_SCORE, default: 0

end
