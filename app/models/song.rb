class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, presence: true, unless: !released?

  def released?
    if self.released == true
      true
    else
      false
  end
  

end
