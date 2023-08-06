class FieldType < ApplicationRecord
    has_many: :fields, dependent: :destroy
end
