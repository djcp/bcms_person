class PersonListByCategoryPortlet < Portlet
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    if self.person_category_id.blank?
      @people = Person.find(:all, :order => (self.sort_order.blank?) ? 'first_name, last_name' : self.sort_order)
    else
      @person_category = PersonCategory.find(self.person_category_id.to_i)
      @people = Person.find(:all, :conditions => ['person_category_id = ?', self.person_category_id], :order => (self.sort_order.blank?) ? 'first_name, last_name' : self.sort_order)
    end
  end
end
