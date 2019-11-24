class LetterController < ApplicationController
  def index
    @letters = Letter.all.limit(50).order(score: :asc)
  end

  def upvote
    @letter = Letter.find params[:id]
    @letter.update_attribute :score, @letter.core + 1
    LetterRedisRepository.increment @letter

    redirect_to letters_path, notice: "Upvoted the letter"
  end

  def downvote
    @letter = Letter.find params[:id]
    @letter.update_attribute :score, @letter.core - 1
    LetterRedisRepository.decrement @letter

    redirect_to letters_path, notice: "Downvoted the letter"
  end
end
