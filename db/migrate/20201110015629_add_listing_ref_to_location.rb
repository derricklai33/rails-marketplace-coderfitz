class AddListingRefToLocation < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :listing, null: false, foreign_key: true
  end
end
