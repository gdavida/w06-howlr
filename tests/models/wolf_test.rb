require_relative  "../test_helper"

class WolfTest < Minitest::Test
  
  def test_invalid_without_name
    w = Wolf.new(name: "Bob", picture_url: "www.picture.com/1234", caption: "This is about me.")
    assert(w.valid?, "should be valid with a name")

    w.name = nil
    refute(w.valid?, "should be invalid without a name")
  end

  def test_invalid_without_picture_url
    w = Wolf.new(name: "Bob", picture_url: "www.picture.com/1234", caption: "This is about me.")
    assert(w.valid?, "should be valid with picture_url")

    w.picture_url = nil
    refute(w.valid?, "should be invalid without picture_url")
  end


end
