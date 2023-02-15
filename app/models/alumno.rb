class Alumno < ApplicationRecord
  belongs_to :family
  has_one :inscription, dependent: :delete
  has_one :curso, through: :inscription
end
