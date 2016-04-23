class Howlback < ActiveRecord::Base
  validates :howl_id, presence: true
  validates :wolf_id, presence: true
  validates :likes, presence: true
  validates :message, presence:true
end



