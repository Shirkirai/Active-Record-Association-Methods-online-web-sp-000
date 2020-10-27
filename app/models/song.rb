class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
      self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    #binding.pry
    #if drake does not exist as an artist, then create drake
    #assign the newly created drake to the song
    #if drake exists as an artist, then assign him to the song

    drake = Artist.new(name: "Drake")
    if
    self.artist.name = "Drake"


  end

  def exists?
      if self.artist.size > 1
          true
      else
          false
      end
  end

end
