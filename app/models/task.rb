class Task < ApplicationRecord
  belongs_to :room
  belongs_to :product, optional: true
  belongs_to :action
  belongs_to :element, optional: true
end
