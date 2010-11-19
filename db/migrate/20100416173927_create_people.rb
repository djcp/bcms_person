class CreatePeople < ActiveRecord::Migration
  def self.up
    create_content_table :people do |t|
      t.string :first_name 
      t.string :middle_name 
      t.string :last_name 
      t.string :job_title 
      t.string :phone 
      t.string :office
      t.string :email
      t.text :summary, :size => (64.kilobytes + 1) 
      t.text :description, :size => (64.kilobytes + 1) 
      t.belongs_to :attachment
      t.integer :attachment_version 
      t.date :start_date 
      t.date :end_date 
      t.string :type_of_person
      t.boolean :sticky
      t.string :owned_tag
      t.references :person_category
    end

    add_index :people, :person_category_id
    add_index :people, :sticky
    
    unless Section.with_path('/people').exists?
      Section.create!(:name => "Person", :parent => Section.system.first, :path => '/people', :allow_groups=>:all)
    end
    ContentType.create!(:name => "Person", :group_name => "Person")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Person'])
    CategoryType.all(:conditions => ['name = ?', 'Person']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :person_versions
    drop_table :people
  end
end
