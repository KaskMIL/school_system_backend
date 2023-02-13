class Family < ApplicationRecord
  has_many :alumnos, foreign_key: 'family_id', dependent: :destroy
end
