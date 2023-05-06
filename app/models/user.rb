class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dreamlogs, dependent: :destroy
  has_many :dreams, through: :dreamlogs
  has_one_attached :avatar
  has_many :personal_details, dependent: :destroy
end
