require 'minitest/autorun'

require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('./sample_text.txt', 'r')
  end

  def test_word_count
    text = Text.new(@file.read)

    assert_equal 72, text.word_count
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end


