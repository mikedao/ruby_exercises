gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'phoenix'

class PhoenixTest < Minitest::Test

  def test_it_has_a_name
    phoenix = Phoenix.new("Frank")
    assert_equal "Frank", phoenix.name
  end

  def test_it_has_an_age
    phoenix = Phoenix.new("Frank", 74)
    assert_equal 74, phoenix.age
  end

  def test_is_an_adult_after_300_years
    phoenix = Phoenix.new("Frank", 301)
    assert phoenix.adult?
  end

  def test_phoenix_ages
    phoenix = Phoenix.new("Frank", 74)
    phoenix.celebrate_birthday
    assert_equal 75, phoenix.age
  end

  def test_is_it_an_infant
    phoenix = Phoenix.new("Frank", 74)
    assert phoenix.infant?
  end

  def test_is_it_alive
    phoenix = Phoenix.new("Frank", 74)
    assert phoenix.alive?
  end

  def test_is_it_dead_and_burn_kills_it
    phoenix = Phoenix.new("Frank", 74)
    phoenix.burn!
    assert phoenix.dead?
  end

  def test_when_dead_it_can_revive
    phoenix = Phoenix.new("Frank", 74)
    phoenix.burn!
    assert phoenix.dead?
    phoenix.revive!
    refute phoenix.dead?
  end

  def test_when_it_revives_lives_gets_incremented
    phoenix = Phoenix.new("Frank", 74)
    phoenix.burn!
    phoenix.revive!
    assert_equal 1, phoenix.lives
  end

  def test_can_only_revive_ten_times
    phoenix = Phoenix.new("Frank", 74)
    10.times do
      phoenix.burn!
      phoenix.revive!
    end
    phoenix.burn!
    phoenix.revive!
    assert phoenix.dead?
  end

  def test_fairy_kiss_gives_ten_more_revives
    phoenix = Phoenix.new("Frank", 74)
    phoenix.fairykiss
    assert_equal 10, phoenix.revives
  end

end


# Will have:
#
# name
# age
# it will become an adult after 300 years
# adult?
# infant?
# dead?
# burn!   kills phoenix
# revive!
# alive?
# lives - count
# can only revive 10 times
# fairy kisses phoenix it can revive another times
#
#
#
#
