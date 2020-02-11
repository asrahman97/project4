class AddCreatedByRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :created_by, :string
  end
end
