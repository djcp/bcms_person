module Cms::Routes
  def routes_for_bcms_person
    namespace(:cms) do |cms|
      #cms.content_blocks :people
    end  
  end
end
