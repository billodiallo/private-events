module UsersHelper
  def user_sessions
    if user_signed_in?
      content_tag(:div, class: 'd-flex special') do
        (button_to 'sign out', destroy_user_session_path, method: :delete, class: 'btn_all bg-primary') +
          (link_to 'new post', new_event_path, method: :delete, class: 'btn_all text-light btn_special1')
      end
    else
      (button_to 'sign in', new_user_session_path, class: 'btn_all bg-primary') +
        (link_to 'sign up', new_user_registration_path, class: 'btn_special1 text-light btn_all')
    end
  end
end
