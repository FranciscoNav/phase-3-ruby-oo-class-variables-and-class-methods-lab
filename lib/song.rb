require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    @@count = 0
    @@artists = []
    @@genres = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}

        self.genres.each do |genre|
            genre_hash[genre]= 0
        end

        @@genres.each do |genre|
            genre_hash[genre] += 1
        end

        genre_hash
    end

    def self.artist_count
        artist_hash = {}

        self.artists.each do |artist|
            artist_hash[artist]= 0
        end

        @@artists.each do |artist|
            artist_hash[artist] += 1
        end

        artist_hash
    end

end