class Curso < ApplicationRecord
  has_many :inscriptions
  has_many :alumnos, through: :inscription, foreign_key: 'alumno_id'
end
