class Person < ActiveRecord::Base

  EMAIL_REGEX = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

  acts_as_content_block :taggable => true
  belongs_to_attachment
  belongs_to :person_category

  validates_format_of :email, :with => EMAIL_REGEX, :allow_blank => true

  validates_presence_of :first_name, :last_name, :name

  def set_attachment_file_path
    # The default behavior is use /attachments/file.txt for the attachment path,
    # assuming file.txt was the name of the file the user uploaded
    # You should override this with your own strategy for setting the attachment path
    super
  end

  def set_attachment_section
    # The default behavior is to put all attachments in the root section
    # Override this method if you would like to change that
    super
  end

  def display_name
    "#{self.first_name} #{self.last_name}"
  end

end
