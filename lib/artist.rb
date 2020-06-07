class Artist 
  
  @@song = 0
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @@song += 1
    @songs = []
  end
  
  def add_song(song)
    self.song << song
    song.artist = self
  end
  
  def add_song_by_name(song_name)
   new_song = Song.new(song_name)
   new_song.artist = self
   self.songs << song_name
  end
  
  def self.song_count
    @@song
  end
  
  def songs 
    Song.all.each do |songs|
     songs.artist = self.name
   end
  end
  
end