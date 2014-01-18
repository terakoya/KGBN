class User < ActiveRecord::Base
  has_many :topics

  validates_length_of :profile, maximum: 300
end
