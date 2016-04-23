require_relative  "../test_helper"

class ResponseTest < Minitest::Test
  
  def test_invalid_without_name
    r = Response.new(howl_id:1, wolf_id:3, likes: 0, message: "No way!!!!")
    r.message = nil
    refute(r.valid?, "should be invalid without a name")
  end

  def test_invalid_without_share_image_url
    r = Response.new(howl_id:1, wolf_id:3, likes: 0, message: "No way!!!!")

    r.likes = nil
    refute(r.valid?, "should be invalid without share_image_url")
  end


end
