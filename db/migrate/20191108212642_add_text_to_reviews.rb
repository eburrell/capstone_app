class AddTextToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :text, :string
  end
end
