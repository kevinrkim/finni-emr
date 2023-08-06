class Patient < ApplicationRecord
    has_many :fields, dependent: :destroy
end
