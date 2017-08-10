class Coordinator < ApplicationRecord
  has_and_belongs_to_many :registries
  has_many :enrollments
end
