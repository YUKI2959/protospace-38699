class Comment < ApplicationRecord


  belongs_to :user
  belongs_to :prototype

  # からの場合保存しない
  validates :content, presence: true

end

