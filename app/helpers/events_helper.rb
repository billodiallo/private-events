module EventsHelper
  def user_sessions
    if user_signed_in?
      content_tag(:div, class: 'd-flex special') do
        (button_to 'Sign Out', destroy_user_session_path, method: :delete, class: 'btn_all bg-primary') +
          (link_to 'New Event', new_event_path, method: :delete, class: 'btn_all text-light btn_special1')
      end
    else
      (button_to 'Sign In', new_user_session_path, class: 'btn_all bg-primary') +
        (link_to 'Sign Up', new_user_registration_path, class: 'btn_special1 text-light btn_all')
    end
  end

  def event_option
    if current_user == @event.creator
      (link_to 'Edit', edit_event_path, class: 'btn btn-outline-secondary')
      (link_to 'Delete', event_path, method: :delete, class: 'btn btn-outline-secondary',
                                     data: { confirm: 'Delete this event?' })
    elsif @event.attendees.include?(current_user)
      (link_to 'Cancel visitor', cancel_visitor_event_path, class: 'btn btn-outline-secondary')
    else
      (link_to 'Want to Join --- Go ', visitor_event_path, class: 'btn btn-primary' unless @event.date < Time.now)
    end
  end

  def event_option2
    if @event.attendees.empty?
      content_tag(:div, class: 'list-group') do
        content_tag(:li, class: 'list-group-item text-muted') do
          text = 'This event has no attendees yet'
          text
        end
      end
    else
      content_tag(:div, class: 'list-group') do
        @event.attendees.each do |attendee|
          content_tag(:li, class: 'list-group-item') do
            attendee.email
          end
        end
      end
    end
  end
end
