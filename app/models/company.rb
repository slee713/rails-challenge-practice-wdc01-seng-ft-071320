class Company < ApplicationRecord
    has_many :employees
    has_many :offices
    has_many :buildings, through: :offices

    validates :name, presence: true

    def total_rent
        total_rent = 0
        self.offices.each do |office|
            total_rent += office.building.rent_per_floor
        end
        return total_rent
    end

end
