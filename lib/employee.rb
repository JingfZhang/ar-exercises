class Employee < ActiveRecord::Base
  belongs_to :store

  validate :employees_must_have_first_name,
    :employees_must_have_last_name,
    :employees_hourly_rate_valid


  def employees_must_have_first_name
    if !first_name
      errors.add(:first_name, "Employee must always have a first name.")
    end
  end

  def employees_must_have_last_name
    if !last_name
      errors.add(:last_name, "Employee must always have a last name.")
    end
  end

  def employees_hourly_rate_valid
    if !hourly_rate && (hourly_rate < 40 || hourly_rate > 200 || !hourly_rate.is_a?(Integer))
      errors.add(:hourly_rate, "Hourly rate must be an integer between 40 and 200")
    end
  end
end
