class Payment < ApplicationRecord
  belongs_to :alumno, foreign_key: 'alumno_id'
  belongs_to :concept, foreign_key: 'concept_id'
end
