class Year < ApplicationRecord
  belongs_to :alumno
  has_many :concepts, dependent: :delete_all
end
