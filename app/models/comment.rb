class Comment < ActiveRecord::Base
  belongs_to :topic

  validates_presence_of :user_id
  validates_presence_of :topic_id
  validates_presence_of :body
  validates_length_of :body ,maximum: 300
end
