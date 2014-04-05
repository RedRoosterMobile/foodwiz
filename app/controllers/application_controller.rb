class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @@themes = %w(cosmo cyborg darkly flatly lumen slate spacelab superhero united yeti readable amelia journal)

  before_action :set_global_view_items
  before_action :set_locale

  #http://guides.rubyonrails.org/i18n.html
  def set_locale
    session[:locale] = I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
  end

  def set_global_view_items
    bootstrap_version
    bootswatch_theme
    bootswatch_themes
  end

  def bootstrap_version
    @bootstrap_version ='3.1.1'
  end

  def bootswatch_theme
    #http://www.bootstrapcdn.com/#bootswatch_tab
    session['theme'] = @bootswatch_theme = params['theme'] || session['theme'] || 'amelia'

  end

  def bootswatch_themes
    #http://www.bootstrapcdn.com/#bootswatch_tab
    @bootswatch_themes = @@themes
  end


  def pagination_count
    # TODO: make this dynamic
    Foodwiz::Application.config.foodwiz[:pagination_count]
  end

  private
  def not_authenticated
    redirect_to login_path, notice: "Please login first"
  end




end
