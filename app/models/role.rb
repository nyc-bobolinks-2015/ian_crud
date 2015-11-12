class Role < ActiveRecord::Base
  has_many :actorroles
  has_many :actors, through: :actorroles
end
