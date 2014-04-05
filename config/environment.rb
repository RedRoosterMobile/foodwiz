# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Foodwiz::Application.initialize!

Foodwiz::Application.configure do
  config.foodwiz = {
      pagination_count: 5
  }
end