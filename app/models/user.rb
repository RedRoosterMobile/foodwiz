=begin
class MyModel < ActiveRecord::Base
  enum status: [:draft, :beta, :public]
end
Then use it a will:

MyModel.draft # gets all drafts
MyModel.last.draft? # checks if the last model is draft
MyModel.last.status # gets the string description of the status of my model
=end

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  #enum user_level: Foodwiz::Application.config.foodwiz[:user_levels]
  enum user_level: [:default,:admin], default: :default

  # for user levels wait for rails 4.1 (minitest-rails)

  validates_confirmation_of :password
  validates_presence_of :password , on: :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i , multiline: true
end
