class Curso < ApplicationRecord
  has_many :inscriptions, dependent: :delete_all
  has_many :alumnos, through: :inscription, foreign_key: 'alumno_id'
end
