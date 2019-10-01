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
  
  def name=(@name)
    name
  end
  
  def self.new_by_name(song_name)
    song = self.create
    song.name
  end

end
