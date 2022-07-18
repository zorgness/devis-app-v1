class Room < ApplicationRecord
  belongs_to :quotation
  has_many :tasks, dependent: :destroy
end
