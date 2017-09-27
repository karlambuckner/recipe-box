class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:instruction, :string)
      t.column(:rating, :integer)
      t.column(:ingredient_id, :integer)
    end
  end
end
