class Concept < ApplicationRecord
  has_many :payments, dependent: :delete_all
  belongs_to :year, dependent: :destroy
end
