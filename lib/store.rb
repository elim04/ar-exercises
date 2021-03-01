class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than: 0 }

  validate :must_carry_one_apparel 

  def must_carry_one_apparel
    if !self.womens_apparel && !self.mens_apparel 
      errors.add(:mens_apparel, "Need to input one type of apparel")
      errors.add(:womens_apparel, "Need to input one type of apparel")
    end
  end

end
