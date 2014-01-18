class User < ActiveRecord::Base
  has_many :topics

  validates:profile, presence: true
  
end
