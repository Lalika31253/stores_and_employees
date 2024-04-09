class Store < ActiveRecord::Base

  has_many :employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_apparel

  Stores must carry at least one of the men's or women's apparel
  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "The store must carry at least one apparel, men's or women's")
      end
    end
  end

