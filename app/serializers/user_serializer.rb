class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :events, :hosted_events
  
end
