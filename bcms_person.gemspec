SPEC = Gem::Specification.new do |spec| 
  spec.name = "bcms_person"
  spec.rubyforge_project = spec.name
  spec.version = "1.0.0"
  spec.summary = "A Person Module for BrowserCMS"
  spec.author = "BrowserMedia" 
  spec.email = "github@browsermedia.com" 
  spec.homepage = "http://www.browsercms.org" 
  spec.files += Dir["app/**/*"]
  spec.files += Dir["db/migrate/*.rb"]
  spec.files -= Dir["db/migrate/*_browsercms_*.rb"]
  spec.files -= Dir["db/migrate/*_load_seed_data.rb"]
  spec.files += Dir["lib/bcms_person.rb"]
  spec.files += Dir["lib/bcms_person/*"]
  spec.files += Dir["rails/init.rb"]
  spec.files += Dir["public/bcms/person/**/*"]
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README"]
end
