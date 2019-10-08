class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :city_name
      t.integer :accessibility
      t.integer :cost
      t.integer :quality
      t.integer :safety
      t.integer :entertainment
      t.integer :user_id
      t.integer :city_id

      t.timestamps
    end
  end
end
