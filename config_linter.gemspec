Gem::Specification.new do |s|
  s.name = %q{config_linters}
  s.version = "0.0.0"
  s.authors = ["Martin Carniello"]
  s.email = ["martincarniello@gmail.com"]
  s.date = %q{2015-08-05}
  s.summary = %q{Linters configuration for projects}
  s.files = [
    "lib/config_linters.rb",
    "lib/config_linters/railtie.rb",
    "lib/tasks/config_linters.rake"
  ]
  s.require_paths = ["lib", "lib/config_linters", "lib/tasks"]
end
