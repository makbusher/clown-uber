class User < ApplicationRecord
  has_many :appointments
  has_many :clowns, through: :appointments
end
