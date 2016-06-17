require 'minitest/autorun'
require 'minitest/unit'

MiniTest::Unit.autorun

class Timezone
  def show num
    if num <= 3
      '深夜'
    elsif num > 3 && num <= 6
      '夜'
    elsif num > 6 && num <= 11
      '朝'
    elsif num > 11 && num <= 18
      '昼'
    elsif num > 18 && num <= 22
      '夜'
    elsif num > 22 && num <= 27
      '深夜'
    elsif num > 27 && num <= 30
      '夜'
    end
  end
end

class TestTimezone < MiniTest::Unit::TestCase
  def setup
    @tz = Timezone.new
  end
  def teardown

  end

  def test_latenight1_end
    assert_equal '深夜', @tz.show(3)
  end
  def test_night1_end
    assert_equal '夜', @tz.show(6)
  end
  def test_morning_start
    assert_equal '朝', @tz.show(7)
  end
  def test_morning_end
    assert_equal '朝', @tz.show(11)
  end
  def test_evening_start
    assert_equal '昼', @tz.show(12)
  end
  def test_evening_end
    assert_equal '昼', @tz.show(18)
  end
  def test_night1_start
    assert_equal '夜', @tz.show(19)
  end
  def test_night2_end
    assert_equal '夜', @tz.show(22)
  end
  def test_latenight_start
    assert_equal '深夜', @tz.show(23)
  end
  def test_latenight2_end
    assert_equal '深夜', @tz.show(27)
  end
  def test_night3_end
    assert_equal '夜', @tz.show(29)
  end

end
