class Wolf < ActiveRecord::Base
  validates :name, presence: true, uniqueness:true
  validates :picture_url, presence: true
  validates :caption, presence: true
  has_many :howls
end

