
class Book

    attr_accessor :author, :title, :word_count

    @@all = []
    def initialize(title)
        @title = title
        @word_count = word_count
        @@all << self
    end 

    def self.all
        @@all 
    end

end 



