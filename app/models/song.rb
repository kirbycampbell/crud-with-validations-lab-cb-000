class Song < ActiveRecord::Base
  validates :title, presence: true


  validates :release_year, presence: true, if: :released?
  validates :release_year, numericality: { less_than_or_equal_to: Date.today.year}

  def released?
    released
  end


end
