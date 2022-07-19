class Quotation < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :rooms, dependent: :destroy
  has_many_attached :photos
  validates :number, presence: true, uniqueness: true
end
