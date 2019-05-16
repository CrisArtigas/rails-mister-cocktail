class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  # validates :cocktail, uniqueness: true, presence: true
  # validates :ingredient, uniqueness: true, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }

end
