class Review < ApplicationRecord
  validates :accessibility, :cost, :quality, :safety, :entertainment, presence: true


  belongs_to :city
  belongs_to :user

  def avg_rating
    avg = [accessibility, cost, quality, safety, entertainment]
    avg.sum / avg.size.to_f
  end
  
end
