class Party < ApplicationRecord
  validates_presence_of :title,
                        :date,
                        :zip_code

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def address
    [street_address, city, zip, state].compact.join(", ")
  end

  def address_changed?
    street_address_changed? || city_changed? || zip_changed? || state_changed?
  end

  def view_date
    self.date.strftime('%b. %-d, %Y')
  end

  def location
    "#{self.street_address}, #{self.city}, #{self.state} #{self.zip_code}"
  end
end
