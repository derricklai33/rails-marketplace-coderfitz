class CreateSneakers < ActiveRecord::Migration[6.0]
  def change
    create_table :sneakers do |t|
      t.string :title
      t.string :brand

      t.timestamps
    end
  end
end
