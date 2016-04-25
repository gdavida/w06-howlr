class Howlback < ActiveRecord::Base
  validates :howl, presence: true
  validates :wolf, presence: true
  validates :likes, presence: true
  validates :message, presence:true

  belongs_to :wolf
  belongs_to :howl

end



