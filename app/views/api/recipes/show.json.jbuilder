json.extract! @recipe, :id, :title

json.ingredients @recipe.recipes_ingredients do |recipe_ingredient|
  json.extract! recipe_ingredient.ingredient, :id, :name
  json.extract! recipe_ingredient, :quantity, :unit, :optional
end

json.extract! @recipe, :instructions
