class Participant < ApplicationRecord
  has_many :enrollments, dependent: :destroy

  def date_of_birth
    self.birthday.strftime('%x')
  end
end
