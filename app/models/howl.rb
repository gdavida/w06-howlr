class Howl < ActiveRecord::Base
  validates :howl, presence: true, uniqueness:true
  
  belongs_to :wolf
end


