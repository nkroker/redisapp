class LetterController < ApplicationController
  def index
    @letters = Letter.all.limit(50).order(score: :asc)
  end
end
