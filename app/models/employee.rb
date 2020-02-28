class Employee < ApplicationRecord
    belongs_to :dog
    accepts_nested_attributes_for :dog

    validates :title, uniqueness: true
    validates :alias, uniqueness:true
end
