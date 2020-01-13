class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :host, :attendees

  attribute :host do |event|
    event.user
  end

  attribute :attendees do |event|
    event.users
  end

end
