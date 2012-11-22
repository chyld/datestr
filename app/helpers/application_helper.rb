module ApplicationHelper
  def display_links
    separator = " | "
    if @auth
      link_to("profile", profile_path) + separator +
      link_to("edit", profile_edit_path) + separator +
      link_to("photos", photos_path) + separator +
      link_to("add photo", photos_new_path) + separator +
      link_to("questions", questions_path) + separator +
      link_to("add question", new_question_path) + separator +
      link_to(@auth.username, logout_path, :method => :delete, :confirm => "Are you sure?")
    else
      link_to("register", register_path) + separator +
      link_to("login", login_path)
    end
  end
end
