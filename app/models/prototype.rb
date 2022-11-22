class Prototype < ApplicationRecord


  # presence: true 空を許可しない
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true


  # アソシエーション
  belongs_to :user, dependent: :destroy
  has_many :comments
  # イメージと1対1
  has_one_attached :image



end
