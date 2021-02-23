require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        h = Hash.new(0)
        @@genres.each do |key| h[key] += 1
        end

        h.each do |key, value|
        "#{key} => #{value}"
        end
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        h = Hash.new(0)
        @@artists.each do |key| h[key] += 1
        end

        h.each do |key, value| 
        "#{key} => #{value}"
        end
    end

    def self.count
        @@count
    end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# levitating = Song.new("Levitating", "Dua Lupa", "Pop")
# stupid_love = Song.new("Stupid Love", "Lady Gaga", "Pop")
# poker_face = Song.new("Poker Face", "Lady Gaga", "Pop")

# binding.pry

end