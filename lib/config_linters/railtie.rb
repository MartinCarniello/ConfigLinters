require 'config_linters'
require 'rails'
module ConfigLinters
  class Railtie < Rails::Railtie
    railtie_name :config_linters

    rake_tasks do
      load "tasks/config_linters.rake"
    end
  end
end
