desc 'Configuration of linters for rails applications'
task :configure_linters do
  config_files_folder = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'config_files'))
  puts 'Save .overcommit.yml to root folder'
  `cp #{config_files_folder}/.overcommit.yml ./`
  puts 'Save .rubocop.yml to root folder'
  `cp #{config_files_folder}/.rubocop.yml ./`
  puts 'Save .scss-lint.yml to root folder'
  `cp #{config_files_folder}/.scss-lint.yml ./`
  puts 'Save css_lint.rb to config/initializers folder'
  `cp #{config_files_folder}/css_lint.rb config/initializers/`
  puts 'Save custom_css_lint.rake to lib/tasks folder'
  `cp #{config_files_folder}/custom_css_lint.rake lib/tasks/`
  puts 'Save jshint.yml to config folder'
  `cp #{config_files_folder}/jshint.yml config/`
end
