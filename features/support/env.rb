require 'rubygems'
require 'capybara'
require 'capybara/dsl'


Capybara.run_server = false

Capybara.default_selector = :css
Capybara.register_driver :poltergeist
Capybara.default_driver    = :poltergeist
Capybara.javascript_driver = :poltergeist

module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end

World(Capybara::DSL, Helpers)