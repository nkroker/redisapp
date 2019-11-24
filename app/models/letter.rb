
require 'letter_redis_repository'
class Letter < ApplicationRecord
  def self.top_10
    ids = LetterRedisRepository.top
    where(id: ids)
  end
end
