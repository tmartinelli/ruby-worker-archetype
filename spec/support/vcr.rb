require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = App.root.join("spec", "vcr")
  c.hook_into :webmock # or :fakeweb
  c.allow_http_connections_when_no_cassette = true
  c.default_cassette_options[:record] = :new_episodes if ENV['NEW_EPISODES']
  c.configure_rspec_metadata!
end