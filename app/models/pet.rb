class Pet < ApplicationRecord
  SPECIES = %w(dog cat bird horse)
  validates :name, presence: true
  validates :specie, inclusion: {in: SPECIES}
end
