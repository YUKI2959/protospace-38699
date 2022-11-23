class Comment < ApplicationRecord


  belongs_to :user, dependent: :destroy
  belongs_to :prototype, dependent: :destroy

  # からの場合保存しない
  validates :content, presence: true

end

