class Actorrole < ActiveRecord::Base
  belongs_to :audition
  belongs_to :role
end
