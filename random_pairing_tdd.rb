require_relative 'random_pairing.rb'
require 'minitest/autorun'

class Test_for_random_pairing < Minitest::Test
  def test_1for1
    assert_equal(1, 1)
  end
  def test_for_only_one
    pairs = pair_students(["Samuel"])
    assert_equal(1, pairs.count)
  end
  def test_for_1_pair
    pairs = pair_students(["Jack", "Billy"])
    assert_equal(1, pairs.count)
  end
  def test_for_1_pair_w_extras
    pairs = pair_students(["Jack", "Billy", "Susan"])
    assert_equal(1, pairs.count)
  end
  def test_for_first_pair
    pairs = pair_students(["Sam", "Steven"])
    assert_equal(1, pairs.count)
  end
  def test_for_2_pairs
    pairs = pair_students(["Sam", "Steven", "Tracey", "Billyjack"])
    assert_equal(2, pairs.count)
  end
  def test_for_2_pairs_w_extra
    pairs = pair_students(["Sam", "Steven", "Tracey", "Billyjack", "Garry"])
    assert_equal(2, pairs.count)
  end
  def test_for_3_pairs_
    pairs = pair_students(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh"])
    assert_equal(3, pairs.count)
  end
  def test_for_3_pairs_w_an_extra
    pairs = pair_students(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh", "Scott"])
    assert_equal(3, pairs.count)
  end
  def test_for_4_pairs
    pairs = pair_students(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh", "Scott", "Josh"])
    assert_equal(4, pairs.count)
  end
  def test_for_6_pairs
    pairs = pair_students(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh", "Scott", "Josh", "Ricky", "Sally", "Kelly", "Hank"])
    assert_equal(6, pairs.count)
  end
  def test_for_none
    pairs = pair_students([])
    assert_equal(0, pairs.count)
  end
  def test_for_same_name_3
    pairs = pair_students(["Sam", "Sam", "Sam"])
    assert_equal(1, pairs.count)
  end
  def test_for_3_variants_multiple_times
    pairs = pair_students(["Sam", "Sam", "Sam", "Steven", "Steven", "Billyjack", "Billyjack", "Billyjack", "Billyjack"])
    assert_equal(4, pairs.count)
  end
end
