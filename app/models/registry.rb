class Registry < ApplicationRecord
  has_many :enrollment
  has_and_belongs_to_many :coordinators
end
