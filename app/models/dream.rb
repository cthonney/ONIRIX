class Dream < ApplicationRecord
  belongs_to :dreamlog
  has_many :interpretations, dependent: :destroy
end
