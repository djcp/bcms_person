class PersonCategory < ActiveRecord::Base
  acts_as_content_block
  has_many :people

  validates_presence_of :name
  

end
