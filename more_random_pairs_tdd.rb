require_relative 'more_random_pairs.rb'
require 'minitest/autorun'

class Test_for_random_pairing < Minitest::Test
  def test_1for1
    assert_equal(1, 1)
  end
  def test_for_1_pair
    pairs = making_pairs(['Tim', 'Tom'])
    assert_equal(1, pairs.count)
  end
  def test_for_1_pair_w_extra
    pairs = making_pairs(['Tim', 'Tom', 'Billyjack'])
    assert_equal(1, pairs.count)
  end
  def test_for_2_pairs
    pairs = making_pairs(["Sam", "Steven", "Tracey", "Billyjack"])
    assert_equal(2, pairs.count)
  end
  def test_for_2_pairs_w_extra
    pairs = making_pairs(["Sam", "Steven", "Tracey", "Billyjack", "Garry"])
    assert_equal(2, pairs.count)
  end
  def test_for_3_pairs_
    pairs = making_pairs(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh"])
    assert_equal(3, pairs.count)
  end
  def test_for_3_pairs_w_an_extra
    pairs = making_pairs(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh", "Scott"])
    assert_equal(3, pairs.count)
  end
  def test_for_4_pairs
    pairs = making_pairs(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh", "Scott", "Josh"])
    assert_equal(4, pairs.count)
  end
  def test_for_6_pairs
    pairs = making_pairs(["Sam", "Steven", "Tracey", "Billyjack", "Garry", "Josh", "Scott", "Josh", "Ricky", "Sally", "Kelly", "Hank"])
    assert_equal(6, pairs.count)
  end
end
