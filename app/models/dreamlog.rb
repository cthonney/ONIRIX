class Dreamlog < ApplicationRecord
  belongs_to :user
  has_many :dreams, dependent: :destroy
end
