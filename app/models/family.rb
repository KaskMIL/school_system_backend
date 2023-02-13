class Family < ApplicationRecord
  has_many :alumno, foreign_key: 'family_id', dependent: :destroy
end
