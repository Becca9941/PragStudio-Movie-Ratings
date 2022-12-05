class Movie < ApplicationRecord
  def flop?
    total_gross < 400000000
  end
end
