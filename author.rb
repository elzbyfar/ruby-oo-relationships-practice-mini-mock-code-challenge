
class Author
    attr_accessor :name, :word_count

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    #CLASS METHODS#
    def self.all
        @@all 
    end

    def self.most_words
        max_words = @@all.map do |author|
            author.total_words
        end.max 
        author_with_most_words = @@all.find do |author| 
            author.total_words == max_words
        end 
    end 

    #INSTANCE METHODS#
    def books
        Book.all.select {|book| book.author == self}
    end 

    def write_book(title, word_count)
        book = Book.new(title)
        book.author = self
        book.word_count = word_count
        book
    end 

    def total_words
        self.word_counter(self.books)   
    end 

    #HELPER METHOD#
    def word_counter(arr)
        total = arr.reduce(0) do |acc, next_val|
            acc + next_val.word_count
        end 
        total
    end 

end 