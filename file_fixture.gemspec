Gem::Specification.new do |s|
  s.name = %q{file_fixture}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new("= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh Nichols"]
  s.date = %q{2008-07-14}
  s.description = %q{A helper method for loading files during test}
  s.email = %q{josh@technicalpickles.com}
  s.extra_rdoc_files = ["lib/file_fixture/test_unit.rb", "lib/file_fixture.rb"]
  s.files = ["lib/file_fixture/test_unit.rb", "lib/file_fixture.rb", "Manifest", "Rakefile", "file_fixture.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://technicalpickles.com}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "File_fixture", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{file_fixture}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{A helper method for loading files during test}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
