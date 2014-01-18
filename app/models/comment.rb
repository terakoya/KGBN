class Comment < ActiveRecord::Base
  belongs_to :topic

  validates :user_id, presence: true
  validates :topic_id, presence: true
  validates :body, presence: {message:"が入力されていませんよ!!"}
  validates :user_id, presence: true
  validates_length_of :body ,maximum: 200


end
