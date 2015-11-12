class Audition < ActiveRecord::Base
  has_many :actorroles
  has_many :roles, through: :actorroles
end
