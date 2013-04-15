class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.text :ingredients_list
      t.text :body
      t.string :title
      t.string :image_url
      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
