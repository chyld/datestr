module ApplicationHelper
  def display_links
    separator = " | "
    if @auth
      link_to("profile", profile_path) +
      link_to("messages", messages_path) +
      link_to("photos", photos_path) +
      link_to("questions", questions_path) +
      link_to(@auth.username, logout_path, :method => :delete)
    else
      link_to("register", register_path) +
      link_to("login", login_path)
    end
  end
end
