module RubyCssLint
  def self.ruleset_classifications
    {
      'adjoining-classes' => RubyCssLint::WARNING,
      'box-model' => RubyCssLint::WARNING,
      'box-sizing' => RubyCssLint::WARNING,
      'compatible-vendor-prefixes' => RubyCssLint::WARNING,
      'display-property-grouping' => RubyCssLint::WARNING,
      'duplicate-background-images' => RubyCssLint::WARNING,
      'duplicate-properties' => RubyCssLint::WARNING,
      'empty-rules' => RubyCssLint::WARNING,
      'errors' => RubyCssLint::WARNING,
      'fallback-colors' => RubyCssLint::DONT_CARE,
      'floats' => RubyCssLint::WARNING,
      'font-faces' => RubyCssLint::WARNING,
      'font-sizes' => RubyCssLint::WARNING,
      'gradients' => RubyCssLint::WARNING,
      'ids' => RubyCssLint::WARNING,
      'import' => RubyCssLint::WARNING,
      'important' => RubyCssLint::WARNING,
      'known-properties' => RubyCssLint::WARNING,
      'outline-none' => RubyCssLint::WARNING,
      'overqualified-elements' => RubyCssLint::DONT_CARE,
      'qualified-headings' => RubyCssLint::DONT_CARE,
      'regex-selectors' => RubyCssLint::WARNING,
      'rules-count' => RubyCssLint::WARNING,
      'shorthand' => RubyCssLint::WARNING,
      'star-property-hack' => RubyCssLint::WARNING,
      'text-indent' => RubyCssLint::WARNING,
      'underscore-property-hack' => RubyCssLint::WARNING,
      'unique-headings' => RubyCssLint::DONT_CARE,
      'universal-selector' => RubyCssLint::WARNING,
      'unqualified-attributes' => RubyCssLint::WARNING,
      'vendor-prefix' => RubyCssLint::WARNING,
      'zero-units' => RubyCssLint::WARNING
    }
  end

  def self.create_params(param_name, rules)
    rules.empty? ? '' : "--#{param_name}=#{rules.keys.join(',')}"
  end

  def self.ruleset_category(category)
    ruleset_classifications.select { |rule_name, rule_value| rule_value == category }
  end

  def self.ignores_ruleset
    create_params('ignore', ruleset_category(nil))
  end

  def self.warnings_ruleset
    create_params('warnings', ruleset_category(1))
  end

  def self.errors_ruleset
    create_params('errors', ruleset_category(2))
  end

  def self.quiet
    '--quiet'
  end

  def self.format
    '--format=compact'
  end

  def self.bash_command
    "csslint app/assets/stylesheets/ #{ignores_ruleset} #{warnings_ruleset} #{errors_ruleset} #{quiet} #{format}"
  end

  def self.location_of_custom_rules(rails_root)
    []
  end

  def self.location_of_css_files(rails_root)
    [rails_root.to_s+'/app/assets/stylesheets/application.css']
  end
end
