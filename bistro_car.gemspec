# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bistro_car}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonas Nicklas"]
  s.date = %q{2010-04-02}
  s.description = %q{BistroCar serves up CoffeeScript from within your Rails application.}
  s.email = %q{jonas.nicklas@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "app/controllers/bistro_car/bundle_controller.rb",
     "bistro_car.gemspec",
     "config/routes.rb",
     "lib/bistro_car.rb",
     "lib/bistro_car/bundle.rb",
     "lib/bistro_car/helpers.rb"
  ]
  s.homepage = %q{http://github.com/peleteiro/bistro_car}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{BistroCar serves up CoffeeScript from within your Rails application.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

