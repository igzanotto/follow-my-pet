class Vaccination < ApplicationRecord
  belongs_to :vaccine
  belongs_to :clinical_history
end
