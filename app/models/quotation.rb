class Quotation < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :rooms, dependent: :destroy
end
