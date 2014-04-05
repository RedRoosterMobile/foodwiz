module ApplicationHelper
  def is_admin?
    current_user.try(:user_level) == 'admin'
  end
end
