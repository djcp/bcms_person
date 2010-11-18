class CreatePersonCategories < ActiveRecord::Migration
  def self.up
    create_content_table :person_categories do |t|
      t.string :name 
      t.string :description
      t.integer :position
    end
    ContentType.create!(:name => "PersonCategory", :group_name => "Person")
    ['Staff','Board Member','Alumni'].each do |cat|
      PersonCategory.create(:publish_on_save => true, :name => cat)
    end
    [:position].each do|col|
      add_index :person_categories, col
    end
  end

  def self.down
    ContentType.delete_all(['name = ?', 'PersonCategory'])
    CategoryType.all(:conditions => ['name = ?', 'Person Category']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :person_category_versions
    drop_table :person_categories
  end
end
