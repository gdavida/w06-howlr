require_relative  "../test_helper"

class HowlTest < Minitest::Test
  
  def test_invalid_without_name
    h = Howl.new(howl: "Hey this stuff is happening!", share_image_url: "www.google.com", likes: 0)
    h.howl = nil
    refute(h.valid?, "should be invalid without a name")
  end

  def test_invalid_without_share_image_url
    h = Howl.new(howl: "Hey this stuff is happening!", share_image_url: "www.google.com", likes: 0)

    h.share_image_url = nil
    refute(h.valid?, "should be invalid without share_image_url")
  end


end
