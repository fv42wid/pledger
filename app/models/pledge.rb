class Pledge < ActiveRecord::Base

  belongs_to :trackee
  attr_protected :trackee_id
  attr_accessible :title, :description, :citation

end