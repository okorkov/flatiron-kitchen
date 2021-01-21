class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :name, presence: true
  # accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(params)
    #params = {"0"=>{"name"=>"Potato"}, "1"=>{"name"=>"Oil"}}
    params.each do |key,param|
      ingredient = Ingredient.find_or_create_by(param) if param['name'] != ''
      # raise ingredient.inspect
      self.ingredients << ingredient if ingredient != nil
    end
  end
end


# def categories_attributes=(category_attributes)
#   category_attributes.values.each do |category_attribute|
#     category = Category.find_or_create_by(category_attribute)
#     self.categories << category
#   end
# end