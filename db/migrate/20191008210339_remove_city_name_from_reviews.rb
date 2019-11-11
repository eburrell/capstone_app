class RemoveCityNameFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :city_name, :string
  end
end
