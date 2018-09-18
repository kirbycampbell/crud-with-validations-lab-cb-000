class Song < ActiveRecord::Base
  validates :title, presence: true


  validates :release_year, presence: true, if: :released?, numericality: { less_than_or_equal_to: Date.today.year}
  validates :title, uniqueness: true, if: !artist_same?

  def released?
    released
  end

  def artist_same?
    @song = Song.findby(:title)
    @song.artist_name == artist_name
  end


end
