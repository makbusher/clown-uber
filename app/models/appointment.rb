class Appointment < ApplicationRecord
  belongs_to :clown
  belongs_to :user
end
