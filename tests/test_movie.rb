require 'minitest/autorun'
require './movie_theater'

class TestMovie < Minitest::Test
  def test_addition
    movie = MovieTheater.new
    assert_equal "inception", " benji", movie.add_movie("inception", "benji"), "Add movie failed"
  end
end
