require("minitest/autorun")
require("minitest/rg")

require_relative('../testing_task_2.rb')

class TaskTest <Minitest::Test

  def setup
    @card1 = Card.new("Clubs", 1)
    @card2 = Card.new("Hearts", 2)
    @cards = [@card1, @card2]
    @game = CardGame.new()
    # because we created @game object we can
    # access every function from CardGame class
  end

  def test_check_for_ace
    assert_equal(true, @game.checkforAce(@card1))
  #  or can
  #  assert_equal(false, @game.checkforAce(@card2))
  end

  def test_check_highest_card
    assert_equal(@card2, @game.highest_card(@card1, @card2))
    # we access the @game object made from the card game
    # class and pass in @card1 and @card2 to comapre them
  end

  def test_total_value_of_cards
    assert_equal("You have a total of 3", @game.cards_total(@cards))
  end

end
