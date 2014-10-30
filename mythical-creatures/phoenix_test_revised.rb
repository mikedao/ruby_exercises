gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'phoenix_revised'

class PhoenixTest < Minitest::Test
  def phoenix
    @phoenix ||=Phoenix.new("Joaquin")
  end

  def test_it_has_a_name
    assert_equal "Joaquin", phoenix.name
  end

  def test_it_has_an_age
    assert_equal 0, phoenix.age
  end

  def test_it_becomes_adult_after_300_years

    assert phoenix.infant?

    301.times do
      phoenix.cakeday!
    end
    assert phoenix.adult?
  end

  def test_is_it_alive_when_created
    assert phoenix.alive?
  end

  def test_is_it_dead_when_burned
    phoenix.burn!
    assert phoenix.dead?
  end

  def test_it_is_alive_after_revived
    phoenix.burn!
    assert phoenix.dead?
    phoenix.revive!
    assert phoenix.alive?
  end

  def test_it_has_lives
    assert_equal 1, phoenix.lives
  end

  def test_it_can_only_revive_ten_times
    11.times do
      phoenix.burn!
      phoenix.revive!
    end
    assert phoenix.dead?
  end

  def test_it_can_revive_after_magic_kiss
    11.times do
      phoenix.burn!
      phoenix.revive!
    end

    assert phoenix.dead?
    fairy = Fairy.new()
    fairy.magic_kiss(phoenix)

    phoenix.revive!
    assert phoenix.alive?
  end



end
