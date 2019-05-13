class ActiveClassList < ApplicationRecord
  belongs_to :student, required: false
  belongs_to :active_class, required: false
end
