namespace :custom_css_lint do
  task run: :environment do
    puts `#{RubyCssLint.bash_command}`
  end
end