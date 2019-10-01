class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(song_name)
    song = Song.create
    song.name = song_name
    song
  end
  
  def self.create_by_name(song_name)
    self.new_by_name(song_name)
  end
  
  def self.find_by_name(song_name)
    self.all.find{|song| song.name == song_name}
  end
  
  def self.find_or_create_by_name(song_name)
   #found_song = self.find_by_name(song_name)
    #if found_song
      #song_name
   # else
      #self.create_by_name(song_name)
   # end
    #song_name
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end
  
  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end
  
  def self.new_from_filename(file_format)
    song = Song.create
    song.name = song_name
    song.artist = song_artist
    
  end
  
  def self.create_from_filename(file_format)
  end
  
  def self.destroy_all
    self.all.clear
  end
  
end
