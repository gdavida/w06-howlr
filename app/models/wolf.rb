class Wolf < ActiveRecord::Base
  validates :name, presence: true

  has_many :howls
end

