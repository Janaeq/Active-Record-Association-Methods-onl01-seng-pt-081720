require 'pry'

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    #you want to get the genre instance out of the array.
    #even though there's only one object in the array, you still want just the object, not the array
    # the .first method gets the first object out of that array. A bit confusing tbh
    self.genres.first
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.count
  end
end
