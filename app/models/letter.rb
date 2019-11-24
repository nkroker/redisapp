class Letter < ApplicationRecord
  def self.top_10
    limit(10).order(score: :desc).uniq
  end
end
