class Comment < ApplicationRecord


  belongs_to :users, dependent: :destroy
  belongs_to :prototypes, dependent: :destroy

  # からの場合保存しない
  validates :content, presence: true

end

