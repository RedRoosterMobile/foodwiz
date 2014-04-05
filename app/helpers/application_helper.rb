module ApplicationHelper
  def is_admin?
    current_user.try(:user_level) == 'admin'
  end

  def active_navigation_path(some_path)
    #fixme: find a better way to do this
    controller_name == some_path.gsub('/','') ? " class=active" : ''
  end
end
