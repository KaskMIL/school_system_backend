class Alumno < ApplicationRecord
  belongs_to :family
  has_one :inscription
  has_one :curso, through: :inscription
end
