SPEC = Gem::Specification.new do |spec| 
  spec.name = "bcms_person"
  spec.rubyforge_project = spec.name
  spec.version = "0.5.0"
  spec.summary = "A staffer / board member / general person module for BrowserCMS"
  spec.author = "Dan Collis-Puro" 
  spec.email = "dan@collispuro.com" 
  spec.homepage = "http://collispuro.com" 
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
  if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    spec.add_dependency("bcms_thumbnail", [">= 1.0.2"])
  end
end
