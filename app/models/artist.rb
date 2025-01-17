class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def song_count
    self.songs.count
  end

  def get_first_song
    self.songs[0]
  end

  def get_genre_of_first_song
    self.get_first_song.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    self.genres.uniq.count
  end
end
