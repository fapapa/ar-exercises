# frozen_string_literal: true

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,
            numericality: {
              greater_than: 0,
              only_integer: true
            }
  validate :mens_apparel_or_womens_apparel_must_be_true

  has_many :employees

  before_destroy :check_for_employees

  def mens_apparel_or_womens_apparel_must_be_true
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "can't be false if womens apparel is also false")
      errors.add(:womens_apparel, "can't be false if mens apparel is also false")
    end
  end

  private

  def check_for_employees
    return false if employees.count.positive?
  end
end
