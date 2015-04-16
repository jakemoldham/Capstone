module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping 
    @devise_mapping||= Devise.mappings[:user]
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def approved?(var)
    Obscenity.profane?(var.content)
  end

  def title_approved?(var)
    Obscenity.profane?(var.title)
  end
end
