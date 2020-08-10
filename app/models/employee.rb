class Employee < ApplicationRecord
    belongs_to :company
    validates :name, length: {minimum: 6}, allow_blank: false
end
