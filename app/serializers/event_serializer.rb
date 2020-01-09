class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :host, :users

  attribute :host do |event|
    event.user
  end

end
