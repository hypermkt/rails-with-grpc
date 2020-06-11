class Dog < ApplicationRecord
  has_one :animal, as: :animalable
end
