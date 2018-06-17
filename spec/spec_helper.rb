# require "bundler/setup"
# require "camify"
#
# RSpec.configure do |config|
#   # Enable flags like --only-failures and --next-failure
#   config.example_status_persistence_file_path = ".rspec_status"
#
#   # Disable RSpec exposing methods globally on `Module` and `main`
#   config.disable_monkey_patching!
#
#   config.expect_with :rspec do |c|
#     c.syntax = :expect
#   end
# end


require 'camify'

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
Dir[File.expand_path('spec/support/**/*.rb')].each(&method(:require)) #{ |f| require f }
