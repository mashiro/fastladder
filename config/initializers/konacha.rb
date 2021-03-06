Konacha.configure do |config|
  require 'capybara/poltergeist'
  config.spec_dir = "spec/javascripts"
  config.driver   = :poltergeist

  Capybara.server do |app, port|
    require 'rack/handler/thin'
    Rack::Handler::Thin.run(app, Port: port)
  end
end if defined?(Konacha)

