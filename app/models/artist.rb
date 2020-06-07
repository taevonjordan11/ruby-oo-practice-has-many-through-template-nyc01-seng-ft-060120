class Artist

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def get_songs
    Song.all.map do |song|
      song.artist == self
    end
  end

  def get_genres
    get_songs.map do |songs|
      songs.genre
    end
  end


end
