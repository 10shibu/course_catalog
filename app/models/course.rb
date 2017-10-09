class Course < ApplicationRecord

  has_and_belongs_to_many :subjects

  has_many :users, through: :enrollments
  has_many :enrollments
end
