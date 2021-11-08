class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    binding.pry
     new = []
    a = Artist.find(1).name
    b = Artist.find(2).name
    c = Artist.find(3).name

    new.push(a,b,c)

    #Other ideas
    # return an array of strings containing every musician's name
    # new = []
    # self.find_each do |currentartist|
    #   artist = artist.name
    #   new <<artist

    # self.find_each do |currentartist|
    #   new << currentartist.name

    #  new = []
    #   Artist.find_each do |a|
    #     new << a.name
    #     new 
    #   end

    #  new = []
    #   Artist.all.each do |a|
    #     new.push(a.name)
    #     new 
    #   end

  end
end
