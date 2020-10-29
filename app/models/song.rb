class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Artist.all.map { |artist| artist.name }.join(', ')
  end
end
