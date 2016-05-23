require 'minitest/unit'
require_relative 'fizzbuzz'

MiniTest::Unit.autorun

class TestFoo < MiniTest::Unit::TestCase
  def setup
    @fb = Fizzbuzz.new
  end
  # teardown はあまり使わない
  def teardown

  end

  def test_1
    assert_equal '', @fb.calc(1)
  end

  def test_3
    assert_equal 'Fizz', @fb.calc(3)
  end

  def test_5
    assert_equal 'Buzz', @fb.calc(5)
  end

  def test_6
    assert_equal 'Fizz', @fb.calc(6)
  end

  def test_15
    assert_equal 'FizzBuzz', @fb.calc(15)
  end

end
