class Field < ApplicationRecord
  belongs_to :patient
  belongs_to :field_type
end
