class AddCategoryToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :category, :integer
  end
end
