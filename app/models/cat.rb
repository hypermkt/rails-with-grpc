class Cat < ApplicationRecord
  has_one :animal, as: :animalable
  before_save :save_animal

  def save_animal
    self.build_animal
  end
end
