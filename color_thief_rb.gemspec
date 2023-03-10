# frozen_string_literal: true

require_relative "lib/color_thief_rb/version"

Gem::Specification.new do |spec|
  spec.name = "color_thief_rb"
  spec.version = ColorThiefRb::VERSION
  spec.authors = ["HolyWalley"]
  spec.email = ["yasha.krasnov@gmail.com"]

  spec.summary = "Ruby bindings to Rust's color-thief."
  spec.description = "Ruby bindings to Rust's color-thief."
  spec.homepage = "https://github.com/HolyWalley/color_thief_rb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.required_rubygems_version = ">= 3.3.11"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/HolyWalley/color_thief_rb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/color_thief_rb/Cargo.toml"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
