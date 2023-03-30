class Alumno < ApplicationRecord
  belongs_to :family
  has_one :inscription, dependent: :delete
  has_one :curso, through: :inscription
  has_many :payments, dependent: :delete_all
  has_many :years, dependent: :delete_all
  has_many :concepts, through: :years, dependent: :delete_all
end
