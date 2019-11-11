class City < ApplicationRecord
  has_many :reviews
  has_many :users

  validates :name, presence: true, uniqueness: true

  def avg_rating
    averages = reviews.map do |review|
      review.avg_rating
    end
    avg = averages.sum / averages.size.to_f
    if avg.nan?
      return 0
    end
    avg
    
  end

  def avg_access
    averages = reviews.map do |review|
      review.accessibility
    end
    avg = averages.sum / averages.size.to_f
    if avg.nan?
      return 0
    end
    avg
    
  end

  def avg_cost
    averages = reviews.map do |review|
      review.cost
    end
    avg = averages.sum / averages.size.to_f
    if avg.nan?
      return 0
    end
    avg
    
  end

  def avg_quality
    averages = reviews.map do |review|
      review.quality
    end
    avg = averages.sum / averages.size.to_f
    if avg.nan?
      return 0
    end
    avg
    
  end

  def avg_safety
    averages = reviews.map do |review|
      review.safety
    end
    avg = averages.sum / averages.size.to_f
    if avg.nan?
      return 0
    end
    avg
    
  end

  def avg_entertainment
    averages = reviews.map do |review|
      review.entertainment
    end
    avg = averages.sum / averages.size.to_f
    if avg.nan?
      return 0
    end
    avg
    
  end


end