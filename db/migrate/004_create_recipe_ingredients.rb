class CreateRecipeIngredients < ActiveRecord::Migration
  def self.up
    create_table :recipe_ingredients do |t|
      
      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_ingredients
  end
end
