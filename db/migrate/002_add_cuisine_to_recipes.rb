class AddCuisineToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.string :cuisine
    end
  end

  def self.down
    change_table :recipes do |t|
      t.remove :cuisine
    end
  end
end
