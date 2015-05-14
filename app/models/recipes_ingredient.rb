# == Schema Information
#
# Table name: recipes_ingredients
#
#  id            :integer          not null, primary key
#  ingredient_id :integer          not null
#  optional      :boolean          default(FALSE), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  quantity      :float            not null
#  unit          :string           not null
#  recipe_id     :integer
#

class RecipesIngredient < ActiveRecord::Base
  validates :recipe, :ingredient, presence: true
  belongs_to :recipe
  belongs_to :ingredient
  has_many :annotations, as: :annotatable

  UNITS = %w(units cups tablespoons teaspoons pints quarts gallons pounds ounces loaves slices dash)
end
