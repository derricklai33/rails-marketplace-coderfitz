class AddSoldToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :sold, :boolean, :default => 0
  end
end
