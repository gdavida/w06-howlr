class Howl < ActiveRecord::Base
  validates :howl, presence: true, uniqueness:true
  validates :wolf_id, presence:true
  validates :likes, presence: true

  belongs_to :wolf
end


