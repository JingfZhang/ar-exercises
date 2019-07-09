class Store < ActiveRecord::Base
  has_many :employees
  validate :store_must_have_name,
    :valid_store_revenue

  def store_must_have_name
    if !name || name.size < 3
      errors.add(:name, "Store must have a name longer than three characters.")
    end
  end

  def valid_store_revenue
    if !annual_revenue.is_a?(Integer) || annual_revenue < 0
      errors.add(:annual_revenue, "Annual revenue must be an integer greater than zero.")
    end
  end
end
