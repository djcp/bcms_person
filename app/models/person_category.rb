class PersonCategory < ActiveRecord::Base
  acts_as_content_block
  acts_as_list

  has_many :people

  validates_presence_of :name

end
