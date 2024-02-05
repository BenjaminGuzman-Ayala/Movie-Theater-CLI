require_relative "movie"

class MovieTheater
  def initialize
    @movies = []
  end

  def run
    loop do
      puts "\n"
      puts "Come on inside of the Movie Theater CLI!"
      puts "1.) Add any movie!"
      puts "2.) See all the movies!"
      puts "3.) Exit out"
      print "Make a choice: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_movie
      when 2
        all_movies
      when 3
        puts "Please come again soon to the Movie Theater CLI! Until next time!"
        break
      else
        puts "Uh-oh, that didn't work! Can you try again."
      end
    end
  end

  private

  def add_movie
    print "Enter movie name: "
    name = gets.chomp
    print "Enter director name: "
    director = gets.chomp
    @movies << Movie.new(name, director)
    puts "You have added a movie."
  end

  def all_movies
    puts "Movies we have so far:"
    @movies.each do |movie|
      puts movie
    end
  end
end
