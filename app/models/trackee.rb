class Trackee < ActiveRecord::Base

  has_many :pledges
  attr_accessible :first_name, :last_name, :description
end